// Main.swift
// Project : VectorSample
// Created by ReflectCode.com
//
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
                  
import UIKit


public class Main : UIViewController {


    @IBAction func show_ic_launcher_foreground(_ v: UIView?){
        imgView!.layer.sublayers?.removeAll()
        imgView!.layer.addSublayer(VectorStore.ic_launcher_foreground(viewBounds: imgView!.bounds))
    }


    @IBAction func show_heart_vector(_ v: UIView?){
        imgView!.layer.sublayers?.removeAll()
        imgView!.layer.addSublayer(VectorStore.heart_vector(viewBounds: imgView!.bounds))
    }


    @IBAction func show_ic_launcher_background(_ v: UIView?){
        imgView!.layer.sublayers?.removeAll()
        imgView!.layer.addSublayer(VectorStore.ic_launcher_background(viewBounds: imgView!.bounds))
    }


    @IBAction func show_face(_ v: UIView?){
        imgView!.layer.sublayers?.removeAll()
        imgView!.layer.addSublayer(VectorStore.face_2(viewBounds: imgView!.bounds))
    }


    @IBAction func show_ic_3d_rotation(_ v: UIView?){
        imgView!.layer.sublayers?.removeAll()
        imgView!.layer.addSublayer(VectorStore.ic_3d_rotation_48px(viewBounds: imgView!.bounds))
    }


    @IBAction func show_ic_fingerprint(_ v: UIView?){
        imgView!.layer.sublayers?.removeAll()
        imgView!.layer.addSublayer(VectorStore.ic_fingerprint_48px(viewBounds: imgView!.bounds))
    }


    @IBAction func show_ic_language(_ v: UIView?){
        imgView!.layer.sublayers?.removeAll()
        imgView!.layer.addSublayer(VectorStore.ic_language_48px(viewBounds: imgView!.bounds))
    }


    @IBAction func show_ic_baseline_error(_ v: UIView?){
        imgView!.layer.sublayers?.removeAll()
        imgView!.layer.addSublayer(VectorStore.ic_baseline_error_outline_24px(viewBounds: imgView!.bounds))
    }


    @IBAction func show_shape_rectangle_solid(_ v: UIView?){
        imgView!.layer.sublayers?.removeAll()
        //imgView!.image = RC_GetResources.getDrawable(R.drawable.shape_rectangle_solid)
        imgView!.image = UIImage(named: "shape_rectangle_solid")
    }


    @IBAction func show_shape_rectangle_gradient(_ v: UIView?){
        imgView!.layer.sublayers?.removeAll()
        imgView!.image = UIImage(named: "shape_rectangle_gradient")
    }


    @IBAction func show_shape_oval(_ v: UIView?){
        imgView!.layer.sublayers?.removeAll()
        imgView!.image = UIImage(named: "shape_oval")
    }


    @IBAction func show_shape_selector(_ v: UIView?){
        imgView!.image = UIImage(named: "shape_selector_button_shape2")
    }

    @IBOutlet weak var imgView: UIImageView!
    
    override public func viewDidLoad(){
        super.viewDidLoad()
    }

}
