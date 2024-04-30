package rpo2024.iu3.fclient;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.icu.text.DecimalFormat;
import android.icu.text.UFormat;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

public class PinpadActivity extends AppCompatActivity {


    TextView txtPin;
    TextView txtPtc;
    TextView txtAmount;
    String pin = "";
    final int MAX_KEYS = 10;

    @SuppressLint({"DefaultLocale", "SetTextI18n"})
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_pinpad);

        txtPin = findViewById(R.id.txtPin);
        txtAmount = (TextView) findViewById(R.id.txtAmount);
        txtPtc = (TextView) findViewById(R.id.txtPtc);

        String amount = String.valueOf(getIntent().getStringExtra("amount"));
        Long amount_val = Long.valueOf(amount);
        DecimalFormat amount_format = new DecimalFormat("#,###,###,##0.00");
        txtAmount.setText("Сумма: " + amount_format.format(amount_val));

        int ptc = getIntent().getIntExtra("ptc", 0);
        String ptcText = "";
        switch (ptc) {
            case (0): {
                ptcText = "Попыток не осталось";
                Toast.makeText(this, ptcText, Toast.LENGTH_LONG).show();
                finish();
                break;
            }
            case (1): {
                ptcText = "Осталась одна попытка";
                break;
            }
            default: {
                ptcText = String.format("Осталось %d попыток", ptc);
                break;
            }
        }
        txtPtc.setText(ptcText);


        ShuffleKeys();

        findViewById(R.id.btnOK).setOnClickListener((View) -> {
            Intent result = new Intent();
            result.putExtra("pin", pin);
            setResult(Activity.RESULT_OK, result);
            finish();
        });

        findViewById(R.id.btnReset).setOnClickListener((View) -> {
            pin = "";
            txtPin.setText("");
        });
    }


    public void keyClick(View v)
    {
        String key = ((TextView)v).getText().toString();
        int sz = pin.length();
        if (sz < 4)
        {
            pin += key;
            txtPin.setText("****".substring(3 - sz));
        }
    }


    protected void ShuffleKeys()
    {
        Button[] keys = new Button[] {
                findViewById(R.id.btnKey0),
                findViewById(R.id.btnKey1),
                findViewById(R.id.btnKey2),
                findViewById(R.id.btnKey3),
                findViewById(R.id.btnKey4),
                findViewById(R.id.btnKey5),
                findViewById(R.id.btnKey6),
                findViewById(R.id.btnKey7),
                findViewById(R.id.btnKey8),
                findViewById(R.id.btnKey9),
        };

        byte[] rnd = MainActivity.randomBytes(MAX_KEYS);
        for(int i = 0; i < MAX_KEYS; i++)
        {
            int idx = (rnd[i] & 0xFF) % 10;
            CharSequence txt = keys[idx].getText();
            keys[idx].setText(keys[i].getText());
            keys[i].setText(txt);
        }
    }


}