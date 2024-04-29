package rpo2024.iu3.fclient;

import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.appcompat.app.AppCompatActivity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import rpo2024.iu3.fclient.databinding.ActivityMainBinding;
import org.apache.commons.codec.Decoder;
import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.binary.Hex;

public class MainActivity extends AppCompatActivity {

    // Used to load the 'fclient' library on application startup.
    static {
        System.loadLibrary("fclient");
        System.loadLibrary("mbedcrypto");
    }

    private ActivityMainBinding binding;
    private Button btnClick;
    private ActivityResultLauncher activityResultLauncher;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        binding = ActivityMainBinding.inflate(getLayoutInflater());
        setContentView(binding.getRoot());

        int rng = initRng();
        byte[] data = randomBytes(10);
        byte[] key = randomBytes(16);

        byte[] code = encrypt(key, data);
        byte[] dec_data = decrypt(key, code);

        // Example of a call to a native method
        btnClick = (Button) findViewById(R.id.btnClick);
        btnClick.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent it = new Intent(v.getContext(), PinpadActivity.class);
                activityResultLauncher.launch(it);

/*              byte[] key = strToHex("0123456789ABCDEF0123456789ABCDE0");
                byte[] enc = encrypt(key, strToHex("1234"));
                byte[] dec = decrypt(key, enc);
                String ans = new String(Hex.encodeHex(dec)).toUpperCase();*/
            }
        });

        activityResultLauncher = registerForActivityResult(
                new ActivityResultContracts.StartActivityForResult(),
                new ActivityResultCallback<ActivityResult>() {
                    @Override
                    public void onActivityResult(ActivityResult res) {
                        if (res.getResultCode() == Activity.RESULT_OK) {
                            Intent data = res.getData();
                            String pin = data.getStringExtra("pin");
                            Toast.makeText(MainActivity.this, pin, Toast.LENGTH_SHORT).show();
                        }
                    }
                });
    }

    public static byte[] strToHex(String str){
        byte[] hex;
        try {
            hex = Hex.decodeHex(str.toCharArray());
        }
        catch (DecoderException e) {
            hex = null;
        }
        return hex;
    }

    /**
     * A native method that is implemented by the 'fclient' native library,
     * which is packaged with this application.
     */
    public native String stringFromJNI();

    public static native int initRng();

    public static native byte[] randomBytes(int no);

    public static native byte[] encrypt(byte[] key, byte[] data);

    public static native byte[] decrypt(byte[] key, byte[] data);
}