// The MIT License (MIT)
// 
// Copyright (c) 2019 Reflect Code Technologies (OPC) Pvt. Ltd. (http://ReflectCode.com)
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
                   
package com.reflectcode.demo.asset.vectordemo;

import android.media.Image;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;


public class Main extends AppCompatActivity {
    Button btn1, btn2;
    ImageView imgView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        imgView = (ImageView) findViewById(R.id.imgView);
    }

    void show_ic_launcher_foreground(View v){
        imgView.setImageDrawable(getResources().getDrawable(R.drawable.ic_launcher_foreground, null));
    }

    void show_heart_vector(View v){
        imgView.setImageDrawable(getResources().getDrawable(R.drawable.heart_vector, null));
    }

    void show_ic_launcher_background(View v){
        imgView.setImageDrawable(getResources().getDrawable(R.drawable.ic_launcher_background, null));
    }

    void show_face(View v){
        imgView.setImageDrawable(getResources().getDrawable(R.drawable.face, null));
    }


    void show_ic_3d_rotation(View v){
        imgView.setImageDrawable(getResources().getDrawable(R.drawable.ic_3d_rotation_48px, null));
    }

    void show_ic_fingerprint(View v){
        imgView.setImageDrawable(getResources().getDrawable(R.drawable.ic_fingerprint_48px, null));
    }

    void show_ic_language(View v){
        imgView.setImageDrawable(getResources().getDrawable(R.drawable.ic_language_48px, null));
    }


    void show_ic_baseline_error(View v){
        imgView.setImageDrawable(getResources().getDrawable(R.drawable.ic_baseline_error_outline_24px, null));
    }


    void show_shape_rectangle_solid(View v){
        imgView.setImageDrawable(getResources().getDrawable(R.drawable.shape_rectangle_solid, null));
    }

    void show_shape_rectangle_gradient(View v){
        imgView.setImageDrawable(getResources().getDrawable(R.drawable.shape_rectangle_gradient, null));
    }

    void show_shape_oval(View v){
        imgView.setImageDrawable(getResources().getDrawable(R.drawable.shape_oval, null));
    }

    void show_shape_selector(View v){
        imgView.setImageDrawable(getResources().getDrawable(R.drawable.shape_selector_button, null));
    }

}
