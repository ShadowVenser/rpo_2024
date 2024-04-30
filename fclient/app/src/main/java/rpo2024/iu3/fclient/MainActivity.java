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

public class MainActivity extends AppCompatActivity implements TransactionEvents{

    // Used to load the 'fclient' library on application startup.
    static {
        System.loadLibrary("fclient");
        System.loadLibrary("mbedcrypto");
    }

    private ActivityMainBinding binding;
    private Button btnClick;
    private ActivityResultLauncher activityResultLauncher;
    private String pin;


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
                byte[] trd = strToHex("9F0206000000000100");
                transaction(trd);

                /*new Thread(() -> {
                    try {
                        byte[] trd = strToHex("9F0206000000000100");
                        boolean ok = transaction(trd);
                        runOnUiThread(() -> {
                            Toast.makeText(MainActivity.this, ok ? "Ok" : "Failed!", Toast.LENGTH_LONG).show();
                        });
                    } catch (Exception e) {
                        logError("Transaction exception: " + e.getMessage());
                    }
                }).start();*/

                //Intent it = new Intent(v.getContext(), PinpadActivity.class);
                //activityResultLauncher.launch(it);

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
                            pin = data.getStringExtra("pin");
                            synchronized (MainActivity.this) {
                                MainActivity.this.notifyAll();
                            }
                        }
                    }
                });
        stringFromJNI();
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
    @Override
    public String enterPin(int ptc, String amount){
        pin = "None";
        Intent enter = new Intent(MainActivity.this, PinpadActivity.class);
        enter.putExtra("ptc", ptc);
        enter.putExtra("amount", amount);
        synchronized (MainActivity.this) {
            activityResultLauncher.launch(enter);
            try {
                MainActivity.this.wait();
            } catch (InterruptedException e) {
                logError("Interrupted exception: " + e.getMessage());
            }
        }
        return pin;
    }

    @Override
    public void transactionResult(boolean result) {
        runOnUiThread(()-> {
            Toast.makeText(MainActivity.this, result ? "ok" : "failed", Toast.LENGTH_SHORT).show();
        });
    }

    /**
     * A native method that is implemented by the 'fclient' native library,
     * which is packaged with this application.
     */
    public native String stringFromJNI();

    public static native void logError(String message);
    public static native int initRng();

    public static native byte[] randomBytes(int no);

    public static native byte[] encrypt(byte[] key, byte[] data);

    public static native byte[] decrypt(byte[] key, byte[] data);

    public native boolean transaction(byte[] trd);
}