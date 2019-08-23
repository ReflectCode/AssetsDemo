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
                    
package com.reflectcode.demo.asset.animation;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;

public class MainActivity extends AppCompatActivity {

    ImageView imgView;
    Animation anim;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        imgView = (ImageView) findViewById(R.id.imgView);
    }

    void animStop(View v){
        imgView.clearAnimation();
    }

    void btnBlinkClick(View v){
        anim = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.blink);
        imgView.startAnimation(anim);
    }

    void btnBounceClick(View v){
        anim = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.bounce);
        imgView.startAnimation(anim);
    }

    void btnFadeInClick(View v){
        anim = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.fade_in);
        imgView.startAnimation(anim);
    }

    void btnFadeOutClick(View v){
        anim = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.fade_out);
        imgView.startAnimation(anim);
    }

    void btnMoveClick(View v){
        anim = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.move);
        imgView.startAnimation(anim);
    }

    void btnRotateClick(View v){
        anim = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.rotate);
        imgView.startAnimation(anim);
    }

    void btnScaleClick(View v){
        anim = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.scale);
        imgView.startAnimation(anim);
    }

    void btnSequentialClick(View v){
        anim = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.sequential);
        imgView.startAnimation(anim);
    }

    void btnSlideDownClick(View v){
        anim = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.slide_down);
        imgView.startAnimation(anim);
    }

    void btnSlideUpClick(View v){
        anim = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.slide_up);
        imgView.startAnimation(anim);
    }

    void btnTogetherClick(View v){
        anim = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.together);
        imgView.startAnimation(anim);
    }

    void btnZoomInClick(View v){
        anim = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.zoom_in);
        imgView.startAnimation(anim);
    }

    void btnZoomOutClick(View v){
        anim = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.zoom_out);
        imgView.startAnimation(anim);
    }


    // Anchor point test methods
    void btnA11Click(View v){
        anim = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.rotate_a11);
        imgView.startAnimation(anim);
    }

    void btnA12Click(View v){
        anim = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.rotate_a12);
        imgView.startAnimation(anim);
    }

    void btnA13Click(View v){
        anim = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.rotate_a13);
        imgView.startAnimation(anim);
    }


    void btnA21Click(View v){
        anim = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.rotate_a21);
        imgView.startAnimation(anim);
    }

    void btnA22Click(View v){
        anim = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.rotate_a22);
        imgView.startAnimation(anim);
    }

    void btnA23Click(View v){
        anim = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.rotate_a23);
        imgView.startAnimation(anim);
    }


    void btnA31Click(View v){
        anim = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.rotate_a31);
        imgView.startAnimation(anim);
    }

    void btnA32Click(View v){
        anim = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.rotate_a32);
        imgView.startAnimation(anim);
    }

    void btnA33Click(View v){
        anim = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.rotate_a33);
        imgView.startAnimation(anim);
    }


}
