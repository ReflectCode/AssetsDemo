//
//  ViewController.swift
//  iOS-Anim
//  AnimationDemo
//
//  Created by samit on 23/08/19.
//  Copyright © 2019 ReflectCode. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of this
//  software and associated documentation files (the "Software"), to deal in the Software
//  without restriction, including without limitation the rights to use, copy, modify, merge,
//  publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons
//  to whom the Software is furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all copies or
//  substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING
//  BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
//  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
//  DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

import UIKit


public class ViewController : UIViewController {

    
    @IBOutlet weak var imgView: UIImageView!
    
    var anim : CAAnimation? = CAAnimation()
    
    override public func viewDidLoad(){
        super.viewDidLoad()
    }

    @IBAction func animStop(_ v: UIView?){
        imgView?.layer.removeAllAnimations()
    }


    @IBAction func btnBlinkClick(_ v: UIView?){
        anim = RC_AnimationStore.blink()
        imgView?.layer.add( anim!, forKey: "anim")
    }


    @IBAction func btnBounceClick(_ v: UIView?){
        anim = RC_AnimationStore.bounce()
        let anchorX: CGFloat = 0
        let anchorY: CGFloat = 0
        imgView!.layer.position = CGPoint(x: imgView!.frame.width * anchorX + imgView!.frame.origin.x , y: imgView!.frame.height * anchorY + imgView!.frame.origin.y )
        imgView!.layer.anchorPoint = CGPoint(x: anchorX, y: anchorY )

        imgView?.layer.add( anim!, forKey: "bounse")
    }


    @IBAction func btnFadeInClick(_ v: UIView?){
        anim = RC_AnimationStore.fade_in()
        imgView?.layer.add( anim!, forKey: "fade_in")
    }


    @IBAction func btnFadeOutClick(_ v: UIView?){
        anim = RC_AnimationStore.fade_out()
        imgView?.layer.add( anim!, forKey: "fade_out")
    }


    @IBAction func btnMoveClick(_ v: UIView?){
        anim = RC_AnimationStore.move()
        var x1, y1, x2, y2 : CGFloat
        x1 = imgView!.center.x
        y1 = imgView!.center.y
        x2 = x1
        y2 = y1
         
        let rootAnimGroup = CAAnimationGroup()
        rootAnimGroup.animations = []
        rootAnimGroup.fillMode = CAMediaTimingFillMode.forwards
        rootAnimGroup.isRemovedOnCompletion = false
        rootAnimGroup.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        rootAnimGroup.duration = 0
        
        let translate_4 = CABasicAnimation(keyPath: "position") 
        translate_4.fillMode = CAMediaTimingFillMode.forwards
        translate_4.isRemovedOnCompletion = false
        translate_4.duration = 0.8
        translate_4.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        translate_4.repeatCount = 1
        
        x1 -= 100
        y1 = y2
        translate_4.fromValue = NSValue(cgPoint: CGPoint(x: x1, y: y1))
        x2 += 100
        
        translate_4.toValue = NSValue(cgPoint: CGPoint(x: x2, y: y2))
        
        x1 = x2
        
        rootAnimGroup.animations?.append( translate_4 )
        
        if rootAnimGroup.duration < translate_4.duration * Double(translate_4.repeatCount) {
                rootAnimGroup.duration = translate_4.duration * Double(translate_4.repeatCount)
        }
        
        anim = rootAnimGroup

        imgView?.layer.add( anim!, forKey: "anim")
    }


    @IBAction func btnRotateClick(_ v: UIView?){
        anim = RC_AnimationStore.rotate()
        let anchorX: CGFloat = 0.5
        let anchorY: CGFloat = 0.5
        imgView!.layer.position = CGPoint(x: imgView!.frame.width * anchorX + imgView!.frame.origin.x , y: imgView!.frame.height * anchorY + imgView!.frame.origin.y )
        imgView!.layer.anchorPoint = CGPoint(x: anchorX, y: anchorY )

        anim!.delegate = Anim_Delegate(
        onAnimationEnd: { animation, finished in
            self.imgView!.layer.position = CGPoint(x: self.imgView!.frame.width * 0.5 + self.imgView!.frame.origin.x , y: self.imgView!.frame.height * 0.5 + self.imgView!.frame.origin.y )
            self.imgView!.layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
            
            }
        )
        imgView?.layer.add( anim!, forKey: "anim")
    }


    @IBAction func btnScaleClick(_ v: UIView?){
        anim = RC_AnimationStore.scale()
        let anchorX: CGFloat = 0
        let anchorY: CGFloat = 0
        imgView!.layer.position = CGPoint(x: imgView!.frame.width * anchorX + imgView!.frame.origin.x , y: imgView!.frame.height * anchorY + imgView!.frame.origin.y )
        imgView!.layer.anchorPoint = CGPoint(x: anchorX, y: anchorY )

        imgView?.layer.add( anim!, forKey: "anim")
    }


    @IBAction func btnSequentialClick(_ v: UIView?){
        anim = RC_AnimationStore.sequential()
        var x1, y1, x2, y2 : CGFloat
        x1 = imgView!.center.x
        y1 = imgView!.center.y
        x2 = x1
        y2 = y1
         
        let rootAnimGroup = CAAnimationGroup()
        rootAnimGroup.animations = []
        rootAnimGroup.fillMode = CAMediaTimingFillMode.forwards
        rootAnimGroup.isRemovedOnCompletion = false
        rootAnimGroup.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        rootAnimGroup.duration = 0
        
        let translate_8 = CABasicAnimation(keyPath: "position") 
        translate_8.fillMode = CAMediaTimingFillMode.forwards
        translate_8.isRemovedOnCompletion = false
        translate_8.beginTime = 0.3
        translate_8.duration = 0.4
        translate_8.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        translate_8.repeatCount = 1
        
        x1 = x2
        y1 = y2
        translate_8.fromValue = NSValue(cgPoint: CGPoint(x: x1, y: y1))
        x2 += ( (imgView!.superview?.bounds.width)! * 75 / 100 ) 
        
        translate_8.toValue = NSValue(cgPoint: CGPoint(x: x2, y: y2))
        
        x1 = x2
        
        rootAnimGroup.animations?.append( translate_8 )
        
        if rootAnimGroup.duration < translate_8.duration * Double(translate_8.repeatCount) {
                rootAnimGroup.duration = translate_8.duration * Double(translate_8.repeatCount)
        }
        let translate_9 = CABasicAnimation(keyPath: "position") 
        translate_9.fillMode = CAMediaTimingFillMode.forwards
        translate_9.isRemovedOnCompletion = false
        translate_9.beginTime = 1.1
        translate_9.duration = 0.4
        translate_9.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        translate_9.repeatCount = 1
        
        x1 = x2
        y1 = y2
        translate_9.fromValue = NSValue(cgPoint: CGPoint(x: x1, y: y1))
        
        y2 += ( (imgView!.superview?.bounds.height)! * 70 / 100 ) 
        translate_9.toValue = NSValue(cgPoint: CGPoint(x: x2, y: y2))
        
        y1 = y2
        
        rootAnimGroup.animations?.append( translate_9 )
         
        if rootAnimGroup.duration < translate_9.duration * Double(translate_9.repeatCount) {
                rootAnimGroup.duration = translate_9.duration * Double(translate_9.repeatCount)
        }
        let set2_Group = CAAnimationGroup()
        set2_Group.animations = []
        set2_Group.fillMode = CAMediaTimingFillMode.forwards
        set2_Group.isRemovedOnCompletion = false
        set2_Group.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        rootAnimGroup.duration = 0
        
        let translate_11 = CABasicAnimation(keyPath: "position") 
        translate_11.fillMode = CAMediaTimingFillMode.forwards
        translate_11.isRemovedOnCompletion = false
        translate_11.beginTime = 1.9
        translate_11.duration = 0.4
        translate_11.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        translate_11.repeatCount = 1
        
        x1 = x2
        y1 = y2
        translate_11.fromValue = NSValue(cgPoint: CGPoint(x: x1, y: y1))
        x2 += ( (imgView!.superview?.bounds.width)! * -75 / 100 ) 
        
        translate_11.toValue = NSValue(cgPoint: CGPoint(x: x2, y: y2))
        
        x1 = x2
        
        set2_Group.animations?.append( translate_11 )
         
        let translate_12 = CABasicAnimation(keyPath: "position") 
        translate_12.fillMode = CAMediaTimingFillMode.forwards
        translate_12.isRemovedOnCompletion = false
        translate_12.beginTime = 2.7
        translate_12.duration = 0.4
        translate_12.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        translate_12.repeatCount = 1
        
        x1 = x2
        y1 = y2
        translate_12.fromValue = NSValue(cgPoint: CGPoint(x: x1, y: y1))
        
        y2 += ( (imgView!.superview?.bounds.height)! * -70 / 100 ) 
        translate_12.toValue = NSValue(cgPoint: CGPoint(x: x2, y: y2))
        
        y1 = y2
        
        set2_Group.animations?.append( translate_12 )
         
        
        rootAnimGroup.animations?.append( set2_Group )
         let rotate_13 = CABasicAnimation(keyPath: "transform.rotation.z") 
        rotate_13.beginTime = 3.8
        rotate_13.duration = 1
        rotate_13.autoreverses = false
        rotate_13.repeatCount = Float.greatestFiniteMagnitude
        rotate_13.fromValue = 0
        rotate_13.toValue = 6.283185        //  360 Degrees 
        
        let anchorX: CGFloat = 0.5
        let anchorY: CGFloat = 0.5
        imgView!.layer.position = CGPoint(x: imgView!.frame.width * anchorX + imgView!.frame.origin.x , y: imgView!.frame.height * anchorY + imgView!.frame.origin.y )
        imgView!.layer.anchorPoint = CGPoint(x: anchorX, y: anchorY )
        
        rootAnimGroup.animations?.append( rotate_13 )
         
        // rootAnimGroup.duration += rotate_13.duration * Double(rotate_13.repeatCount)
        if rootAnimGroup.duration < rotate_13.duration * Double(rotate_13.repeatCount) {
                rootAnimGroup.duration = rotate_13.duration * Double(rotate_13.repeatCount)
        }
        
        anim = rootAnimGroup

        anim!.delegate = Anim_Delegate(
        onAnimationEnd: { animation, finished in
            self.imgView!.layer.position = CGPoint(x: self.imgView!.frame.width * 0.5 + self.imgView!.frame.origin.x , y: self.imgView!.frame.height * 0.5 + self.imgView!.frame.origin.y )
            self.imgView!.layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
            
            }
        )
        imgView?.layer.add( anim!, forKey: "anim")
    }


    @IBAction func btnSlideDownClick(_ v: UIView?){
        anim = RC_AnimationStore.slide_down()
        let anchorX: CGFloat = ( 0.0 - imgView!.frame.origin.x ) / imgView!.bounds.width
        let anchorY: CGFloat = ( 0.0 - imgView!.frame.origin.y ) / imgView!.bounds.height
        imgView!.layer.position = CGPoint(x: imgView!.frame.width * anchorX + imgView!.frame.origin.x , y: imgView!.frame.height * anchorY + imgView!.frame.origin.y )
        imgView!.layer.anchorPoint = CGPoint(x: anchorX, y: anchorY )

        imgView?.layer.add( anim!, forKey: "anim")
    }


    @IBAction func btnSlideUpClick(_ v: UIView?){
        anim = RC_AnimationStore.slide_up()
        let anchorX: CGFloat = ( 0.0 - imgView!.frame.origin.x ) / imgView!.bounds.width
        let anchorY: CGFloat = ( 0.0 - imgView!.frame.origin.y ) / imgView!.bounds.height
        imgView!.layer.position = CGPoint(x: imgView!.frame.width * anchorX + imgView!.frame.origin.x , y: imgView!.frame.height * anchorY + imgView!.frame.origin.y )
        imgView!.layer.anchorPoint = CGPoint(x: anchorX, y: anchorY )

        imgView?.layer.add( anim!, forKey: "anim")
    }


    @IBAction func btnTogetherClick(_ v: UIView?){
        anim = RC_AnimationStore.together()
        let anchorX: CGFloat = 0.5
        let anchorY: CGFloat = 0.5
        imgView!.layer.position = CGPoint(x: imgView!.frame.width * anchorX + imgView!.frame.origin.x , y: imgView!.frame.height * anchorY + imgView!.frame.origin.y )
        imgView!.layer.anchorPoint = CGPoint(x: anchorX, y: anchorY )

        imgView!.layer.position = CGPoint(x: imgView!.frame.width * anchorX + imgView!.frame.origin.x , y: imgView!.frame.height * anchorY + imgView!.frame.origin.y )
        imgView!.layer.anchorPoint = CGPoint(x: anchorX, y: anchorY )

        anim!.delegate = Anim_Delegate(
        onAnimationEnd: { animation, finished in
            self.imgView!.layer.position = CGPoint(x: self.imgView!.frame.width * 0.5 + self.imgView!.frame.origin.x , y: self.imgView!.frame.height * 0.5 + self.imgView!.frame.origin.y )
            self.imgView!.layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
            
            }
        )
        imgView?.layer.add( anim!, forKey: "anim")
    }


    @IBAction func btnZoomInClick(_ v: UIView?){
        anim = RC_AnimationStore.zoom_in()
        let anchorX: CGFloat = 0
        let anchorY: CGFloat = 0
        imgView!.layer.position = CGPoint(x: imgView!.frame.width * anchorX + imgView!.frame.origin.x , y: imgView!.frame.height * anchorY + imgView!.frame.origin.y )
        imgView!.layer.anchorPoint = CGPoint(x: anchorX, y: anchorY )

        imgView?.layer.add( anim!, forKey: "anim")
    }


    @IBAction func btnZoomOutClick(_ v: UIView?){
        anim = RC_AnimationStore.zoom_out()
        let anchorX: CGFloat = 0
        let anchorY: CGFloat = 0
        imgView!.layer.position = CGPoint(x: imgView!.frame.width * anchorX + imgView!.frame.origin.x , y: imgView!.frame.height * anchorY + imgView!.frame.origin.y )
        imgView!.layer.anchorPoint = CGPoint(x: anchorX, y: anchorY )

        imgView?.layer.add( anim!, forKey: "anim")
    }


    @IBAction func btnA11Click(_ v: UIView?){
        anim = RC_AnimationStore.rotate_a11()
        let anchorX: CGFloat = 0
        let anchorY: CGFloat = 0
        imgView!.layer.position = CGPoint(x: imgView!.frame.width * anchorX + imgView!.frame.origin.x , y: imgView!.frame.height * anchorY + imgView!.frame.origin.y )
        imgView!.layer.anchorPoint = CGPoint(x: anchorX, y: anchorY )

        anim!.delegate = Anim_Delegate(
        onAnimationEnd: { animation, finished in
            self.imgView!.layer.position = CGPoint(x: self.imgView!.frame.width * 0.5 + self.imgView!.frame.origin.x , y: self.imgView!.frame.height * 0.5 + self.imgView!.frame.origin.y )
            self.imgView!.layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
            
            }
        )
        imgView?.layer.add( anim!, forKey: "anim")
    }


    @IBAction func btnA12Click(_ v: UIView?){
        anim = RC_AnimationStore.rotate_a12()
        let anchorX: CGFloat = 0.5
        let anchorY: CGFloat = 0
        imgView!.layer.position = CGPoint(x: imgView!.frame.width * anchorX + imgView!.frame.origin.x , y: imgView!.frame.height * anchorY + imgView!.frame.origin.y )
        imgView!.layer.anchorPoint = CGPoint(x: anchorX, y: anchorY )

        anim!.delegate = Anim_Delegate(
        onAnimationEnd: { animation, finished in
            self.imgView!.layer.position = CGPoint(x: self.imgView!.frame.width * 0.5 + self.imgView!.frame.origin.x , y: self.imgView!.frame.height * 0.5 + self.imgView!.frame.origin.y )
            self.imgView!.layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
            
            }
        )
        imgView?.layer.add( anim!, forKey: "anim")
    }


    @IBAction func btnA13Click(_ v: UIView?){
        anim = RC_AnimationStore.rotate_a13()
        let anchorX: CGFloat = 1
        let anchorY: CGFloat = 0
        imgView!.layer.position = CGPoint(x: imgView!.frame.width * anchorX + imgView!.frame.origin.x , y: imgView!.frame.height * anchorY + imgView!.frame.origin.y )
        imgView!.layer.anchorPoint = CGPoint(x: anchorX, y: anchorY )

        anim!.delegate = Anim_Delegate(
        onAnimationEnd: { animation, finished in
            self.imgView!.layer.position = CGPoint(x: self.imgView!.frame.width * 0.5 + self.imgView!.frame.origin.x , y: self.imgView!.frame.height * 0.5 + self.imgView!.frame.origin.y )
            self.imgView!.layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
            
            }
        )
        imgView?.layer.add( anim!, forKey: "anim")
    }


    @IBAction func btnA21Click(_ v: UIView?){
        anim = RC_AnimationStore.rotate_a21()
        let anchorX: CGFloat = 0
        let anchorY: CGFloat = 0.5
        imgView!.layer.position = CGPoint(x: imgView!.frame.width * anchorX + imgView!.frame.origin.x , y: imgView!.frame.height * anchorY + imgView!.frame.origin.y )
        imgView!.layer.anchorPoint = CGPoint(x: anchorX, y: anchorY )

        anim!.delegate = Anim_Delegate(
        onAnimationEnd: { animation, finished in
            self.imgView!.layer.position = CGPoint(x: self.imgView!.frame.width * 0.5 + self.imgView!.frame.origin.x , y: self.imgView!.frame.height * 0.5 + self.imgView!.frame.origin.y )
            self.imgView!.layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
            
            }
        )
        imgView?.layer.add( anim!, forKey: "anim")
    }


    @IBAction func btnA22Click(_ v: UIView?){
        anim = RC_AnimationStore.rotate_a22()
        let anchorX: CGFloat = 0.5
        let anchorY: CGFloat = 0.5
        imgView!.layer.position = CGPoint(x: imgView!.frame.width * anchorX + imgView!.frame.origin.x , y: imgView!.frame.height * anchorY + imgView!.frame.origin.y )
        imgView!.layer.anchorPoint = CGPoint(x: anchorX, y: anchorY )

        anim!.delegate = Anim_Delegate(
        onAnimationEnd: { animation, finished in
            self.imgView!.layer.position = CGPoint(x: self.imgView!.frame.width * 0.5 + self.imgView!.frame.origin.x , y: self.imgView!.frame.height * 0.5 + self.imgView!.frame.origin.y )
            self.imgView!.layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
            
            }
        )
        imgView?.layer.add( anim!, forKey: "anim")
    }


    @IBAction func btnA23Click(_ v: UIView?){
        anim = RC_AnimationStore.rotate_a23()
        let anchorX: CGFloat = 1
        let anchorY: CGFloat = 0.5
        imgView!.layer.position = CGPoint(x: imgView!.frame.width * anchorX + imgView!.frame.origin.x , y: imgView!.frame.height * anchorY + imgView!.frame.origin.y )
        imgView!.layer.anchorPoint = CGPoint(x: anchorX, y: anchorY )

        anim!.delegate = Anim_Delegate(
        onAnimationEnd: { animation, finished in
            self.imgView!.layer.position = CGPoint(x: self.imgView!.frame.width * 0.5 + self.imgView!.frame.origin.x , y: self.imgView!.frame.height * 0.5 + self.imgView!.frame.origin.y )
            self.imgView!.layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
            
            }
        )
        imgView?.layer.add( anim!, forKey: "anim")
    }


    @IBAction func btnA31Click(_ v: UIView?){
        anim = RC_AnimationStore.rotate_a31()
        let anchorX: CGFloat = 0
        let anchorY: CGFloat = 1
        imgView!.layer.position = CGPoint(x: imgView!.frame.width * anchorX + imgView!.frame.origin.x , y: imgView!.frame.height * anchorY + imgView!.frame.origin.y )
        imgView!.layer.anchorPoint = CGPoint(x: anchorX, y: anchorY )

        anim!.delegate = Anim_Delegate(
        onAnimationEnd: { animation, finished in
            self.imgView!.layer.position = CGPoint(x: self.imgView!.frame.width * 0.5 + self.imgView!.frame.origin.x , y: self.imgView!.frame.height * 0.5 + self.imgView!.frame.origin.y )
            self.imgView!.layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
            
            }
        )
        imgView?.layer.add( anim!, forKey: "anim")
    }


    @IBAction func btnA32Click(_ v: UIView?){
        anim = RC_AnimationStore.rotate_a32()
        let anchorX: CGFloat = 0.5
        let anchorY: CGFloat = 1
        imgView!.layer.position = CGPoint(x: imgView!.frame.width * anchorX + imgView!.frame.origin.x , y: imgView!.frame.height * anchorY + imgView!.frame.origin.y )
        imgView!.layer.anchorPoint = CGPoint(x: anchorX, y: anchorY )

        anim!.delegate = Anim_Delegate(
        onAnimationEnd: { animation, finished in
            self.imgView!.layer.position = CGPoint(x: self.imgView!.frame.width * 0.5 + self.imgView!.frame.origin.x , y: self.imgView!.frame.height * 0.5 + self.imgView!.frame.origin.y )
            self.imgView!.layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
            
            }
        )
        imgView?.layer.add( anim!, forKey: "anim")
    }


    @IBAction func btnA33Click(_ v: UIView?){
        anim = RC_AnimationStore.rotate_a33()
        let anchorX: CGFloat = 1
        let anchorY: CGFloat = 1
        imgView!.layer.position = CGPoint(x: imgView!.frame.width * anchorX + imgView!.frame.origin.x , y: imgView!.frame.height * anchorY + imgView!.frame.origin.y )
        imgView!.layer.anchorPoint = CGPoint(x: anchorX, y: anchorY )

        anim!.delegate = Anim_Delegate(
        onAnimationEnd: { animation, finished in
            self.imgView!.layer.position = CGPoint(x: self.imgView!.frame.width * 0.5 + self.imgView!.frame.origin.x , y: self.imgView!.frame.height * 0.5 + self.imgView!.frame.origin.y )
            self.imgView!.layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
            
            }
        )
        imgView?.layer.add( anim!, forKey: "anim")
    }

}
