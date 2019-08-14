//
//  Main.swift
//  Project : VectorSample
//
//  Created by ReflectCode.com
//

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
