package com.test.sentryio;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;

import com.empty.test.LibTest;
import com.example.webdemo.R;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main2);

        LibTest.test();
    }
}