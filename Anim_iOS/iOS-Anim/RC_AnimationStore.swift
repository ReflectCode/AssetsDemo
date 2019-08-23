//
//  RC_AnimationStore.swift
//  Project : AnimSample
//
//  Created by ReflectCode.com
//  Class for storing the animations defined for the project
//  This code is auto generated from animation xml files of source android project
//
 
import UIKit
 
class RC_AnimationStore: NSObject {
 
    // Default animation used when no animation is defined
    class func defaultAnim() -> CAAnimationGroup {
        let rootAnimGroup = CAAnimationGroup()
            rootAnimGroup.animations = []
            rootAnimGroup.fillMode = CAMediaTimingFillMode.forwards
            rootAnimGroup.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.easeInEaseOut )
            rootAnimGroup.isRemovedOnCompletion = false
            rootAnimGroup.duration = 0
 
        let alpha_3 = CABasicAnimation(keyPath: "opacity")
            alpha_3.duration = 0.5
            alpha_3.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.easeIn )
            alpha_3.autoreverses = true
            alpha_3.repeatCount = 10
            alpha_3.toValue = 0
 
        rootAnimGroup.animations?.append( alpha_3 )
 
        if rootAnimGroup.duration < alpha_3.duration * Double(alpha_3.repeatCount) {
           rootAnimGroup.duration = alpha_3.duration * Double(alpha_3.repeatCount)
        }
 
        return rootAnimGroup
    }
 
    // Swift method for animation defined in 'blink.xml' file
    class func blink() -> CAAnimationGroup {
        let rootAnimGroup = CAAnimationGroup()
        rootAnimGroup.animations = []
        rootAnimGroup.fillMode = CAMediaTimingFillMode.forwards
        rootAnimGroup.isRemovedOnCompletion = false
        rootAnimGroup.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        rootAnimGroup.duration = 0
        
 
        let alpha_4 = CABasicAnimation(keyPath: "opacity") 
        alpha_4.duration = 0.5
        alpha_4.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.easeIn )
        alpha_4.autoreverses = true
        alpha_4.repeatCount = Float.greatestFiniteMagnitude
        alpha_4.fromValue = 0.0
        alpha_4.toValue = 1.0
        
 
        rootAnimGroup.animations?.append( alpha_4 )
//      rootAnimGroup.duration += alpha_4.duration * Double(alpha_4.repeatCount)
        if rootAnimGroup.duration < alpha_4.duration * Double(alpha_4.repeatCount) {
            rootAnimGroup.duration = alpha_4.duration * Double(alpha_4.repeatCount)
        }
        return rootAnimGroup
    }
 
    // Swift method for animation defined in 'bounce.xml' file
    class func bounce() -> CAAnimationGroup {
        let rootAnimGroup = CAAnimationGroup()
        rootAnimGroup.animations = []
        rootAnimGroup.fillMode = CAMediaTimingFillMode.forwards
        rootAnimGroup.isRemovedOnCompletion = false
        rootAnimGroup.duration = 0
        
 
        
        let scale_4 = CASpringAnimation(keyPath: "transform.scale.y") 
        scale_4.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeIn)
        scale_4.damping = 4
        scale_4.stiffness = 600
        scale_4.mass = 0.10
        scale_4.initialVelocity = 10
        scale_4.duration = 1.5
        scale_4.repeatCount = 1
        scale_4.fromValue = 0.0  ;  scale_4.toValue = 1.0
        rootAnimGroup.animations?.append( scale_4 )
        
        
 
        rootAnimGroup.animations?.append( scale_4 )
//      rootAnimGroup.duration += scale_4.duration * Double(scale_4.repeatCount)
        if rootAnimGroup.duration < scale_4.duration * Double(scale_4.repeatCount) {
            rootAnimGroup.duration = scale_4.duration * Double(scale_4.repeatCount)
        }
        return rootAnimGroup
    }
 
    // Swift method for animation defined in 'fade_in.xml' file
    class func fade_in() -> CAAnimationGroup {
        let rootAnimGroup = CAAnimationGroup()
        rootAnimGroup.animations = []
        rootAnimGroup.fillMode = CAMediaTimingFillMode.forwards
        rootAnimGroup.isRemovedOnCompletion = false
        rootAnimGroup.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        rootAnimGroup.duration = 0
        
 
        let alpha_4 = CABasicAnimation(keyPath: "opacity") 
        alpha_4.duration = 0.5
        alpha_4.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.easeIn )
        alpha_4.repeatCount = 1
        alpha_4.fromValue = 0.0
        alpha_4.toValue = 1.0
        
 
        rootAnimGroup.animations?.append( alpha_4 )
//      rootAnimGroup.duration += alpha_4.duration * Double(alpha_4.repeatCount)
        if rootAnimGroup.duration < alpha_4.duration * Double(alpha_4.repeatCount) {
            rootAnimGroup.duration = alpha_4.duration * Double(alpha_4.repeatCount)
        }
        return rootAnimGroup
    }
 
    // Swift method for animation defined in 'fade_out.xml' file
    class func fade_out() -> CAAnimationGroup {
        let rootAnimGroup = CAAnimationGroup()
        rootAnimGroup.animations = []
        rootAnimGroup.fillMode = CAMediaTimingFillMode.forwards
        rootAnimGroup.isRemovedOnCompletion = false
        rootAnimGroup.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        rootAnimGroup.duration = 0
        
 
        let alpha_4 = CABasicAnimation(keyPath: "opacity") 
        alpha_4.duration = 0.5
        alpha_4.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.easeIn )
        alpha_4.repeatCount = 1
        alpha_4.fromValue = 1.0
        alpha_4.toValue = 0.0
        
 
        rootAnimGroup.animations?.append( alpha_4 )
//      rootAnimGroup.duration += alpha_4.duration * Double(alpha_4.repeatCount)
        if rootAnimGroup.duration < alpha_4.duration * Double(alpha_4.repeatCount) {
            rootAnimGroup.duration = alpha_4.duration * Double(alpha_4.repeatCount)
        }
        return rootAnimGroup
    }
 
    // Swift method for animation defined in 'move.xml' file
    class func move() -> CAAnimationGroup {
        let rootAnimGroup = CAAnimationGroup()
        rootAnimGroup.animations = []
        rootAnimGroup.fillMode = CAMediaTimingFillMode.forwards
        rootAnimGroup.isRemovedOnCompletion = false
        rootAnimGroup.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        rootAnimGroup.duration = 0
        
 
        let translate_4 = CABasicAnimation(keyPath: "position") 
        translate_4.duration = 0.8
        translate_4.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        translate_4.repeatCount = 1
        
        
        
        
 
        rootAnimGroup.animations?.append( translate_4 )
//      rootAnimGroup.duration += translate_4.duration * Double(translate_4.repeatCount)
        if rootAnimGroup.duration < translate_4.duration * Double(translate_4.repeatCount) {
            rootAnimGroup.duration = translate_4.duration * Double(translate_4.repeatCount)
        }
        return rootAnimGroup
    }
 
    // Swift method for animation defined in 'rotate.xml' file
    class func rotate() -> CAAnimationGroup {
        let rootAnimGroup = CAAnimationGroup()
        rootAnimGroup.animations = []
        rootAnimGroup.fillMode = CAMediaTimingFillMode.forwards
        rootAnimGroup.isRemovedOnCompletion = false
        rootAnimGroup.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        rootAnimGroup.duration = 0
        
 
        let rotate_4 = CABasicAnimation(keyPath: "transform.rotation.z") 
        rotate_4.duration = 1
        rotate_4.autoreverses = false
        rotate_4.repeatCount = Float.greatestFiniteMagnitude
        rotate_4.fromValue = 0
        rotate_4.toValue = 6.283185        //  360 Degrees 
        
        
 
        rootAnimGroup.animations?.append( rotate_4 )
//      rootAnimGroup.duration += rotate_4.duration * Double(rotate_4.repeatCount)
        if rootAnimGroup.duration < rotate_4.duration * Double(rotate_4.repeatCount) {
            rootAnimGroup.duration = rotate_4.duration * Double(rotate_4.repeatCount)
        }
        return rootAnimGroup
    }
 
    // Swift method for animation defined in 'rotate_a11.xml' file
    class func rotate_a11() -> CAAnimationGroup {
        let rootAnimGroup = CAAnimationGroup()
        rootAnimGroup.animations = []
        rootAnimGroup.fillMode = CAMediaTimingFillMode.forwards
        rootAnimGroup.isRemovedOnCompletion = false
        rootAnimGroup.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        rootAnimGroup.duration = 0
        
 
        let rotate_4 = CABasicAnimation(keyPath: "transform.rotation.z") 
        rotate_4.duration = 1
        rotate_4.autoreverses = false
        rotate_4.repeatCount = 1
        rotate_4.fromValue = 0
        rotate_4.toValue = 6.283185        //  360 Degrees 
        
        
 
        rootAnimGroup.animations?.append( rotate_4 )
//      rootAnimGroup.duration += rotate_4.duration * Double(rotate_4.repeatCount)
        if rootAnimGroup.duration < rotate_4.duration * Double(rotate_4.repeatCount) {
            rootAnimGroup.duration = rotate_4.duration * Double(rotate_4.repeatCount)
        }
        return rootAnimGroup
    }
 
    // Swift method for animation defined in 'rotate_a12.xml' file
    class func rotate_a12() -> CAAnimationGroup {
        let rootAnimGroup = CAAnimationGroup()
        rootAnimGroup.animations = []
        rootAnimGroup.fillMode = CAMediaTimingFillMode.forwards
        rootAnimGroup.isRemovedOnCompletion = false
        rootAnimGroup.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        rootAnimGroup.duration = 0
        
 
        let rotate_4 = CABasicAnimation(keyPath: "transform.rotation.z") 
        rotate_4.duration = 1
        rotate_4.autoreverses = false
        rotate_4.repeatCount = 1
        rotate_4.fromValue = 0
        rotate_4.toValue = 6.283185        //  360 Degrees 
        
        
 
        rootAnimGroup.animations?.append( rotate_4 )
//      rootAnimGroup.duration += rotate_4.duration * Double(rotate_4.repeatCount)
        if rootAnimGroup.duration < rotate_4.duration * Double(rotate_4.repeatCount) {
            rootAnimGroup.duration = rotate_4.duration * Double(rotate_4.repeatCount)
        }
        return rootAnimGroup
    }
 
    // Swift method for animation defined in 'rotate_a13.xml' file
    class func rotate_a13() -> CAAnimationGroup {
        let rootAnimGroup = CAAnimationGroup()
        rootAnimGroup.animations = []
        rootAnimGroup.fillMode = CAMediaTimingFillMode.forwards
        rootAnimGroup.isRemovedOnCompletion = false
        rootAnimGroup.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        rootAnimGroup.duration = 0
        
 
        let rotate_4 = CABasicAnimation(keyPath: "transform.rotation.z") 
        rotate_4.duration = 1
        rotate_4.autoreverses = false
        rotate_4.repeatCount = 1
        rotate_4.fromValue = 0
        rotate_4.toValue = 6.283185        //  360 Degrees 
        
        
 
        rootAnimGroup.animations?.append( rotate_4 )
//      rootAnimGroup.duration += rotate_4.duration * Double(rotate_4.repeatCount)
        if rootAnimGroup.duration < rotate_4.duration * Double(rotate_4.repeatCount) {
            rootAnimGroup.duration = rotate_4.duration * Double(rotate_4.repeatCount)
        }
        return rootAnimGroup
    }
 
    // Swift method for animation defined in 'rotate_a21.xml' file
    class func rotate_a21() -> CAAnimationGroup {
        let rootAnimGroup = CAAnimationGroup()
        rootAnimGroup.animations = []
        rootAnimGroup.fillMode = CAMediaTimingFillMode.forwards
        rootAnimGroup.isRemovedOnCompletion = false
        rootAnimGroup.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        rootAnimGroup.duration = 0
        
 
        let rotate_4 = CABasicAnimation(keyPath: "transform.rotation.z") 
        rotate_4.duration = 1
        rotate_4.autoreverses = false
        rotate_4.repeatCount = 1
        rotate_4.fromValue = 0
        rotate_4.toValue = 6.283185        //  360 Degrees 
        
        
 
        rootAnimGroup.animations?.append( rotate_4 )
//      rootAnimGroup.duration += rotate_4.duration * Double(rotate_4.repeatCount)
        if rootAnimGroup.duration < rotate_4.duration * Double(rotate_4.repeatCount) {
            rootAnimGroup.duration = rotate_4.duration * Double(rotate_4.repeatCount)
        }
        return rootAnimGroup
    }
 
    // Swift method for animation defined in 'rotate_a22.xml' file
    class func rotate_a22() -> CAAnimationGroup {
        let rootAnimGroup = CAAnimationGroup()
        rootAnimGroup.animations = []
        rootAnimGroup.fillMode = CAMediaTimingFillMode.forwards
        rootAnimGroup.isRemovedOnCompletion = false
        rootAnimGroup.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        rootAnimGroup.duration = 0
        
 
        let rotate_4 = CABasicAnimation(keyPath: "transform.rotation.z") 
        rotate_4.duration = 1
        rotate_4.autoreverses = false
        rotate_4.repeatCount = 1
        rotate_4.fromValue = 0
        rotate_4.toValue = 6.283185        //  360 Degrees 
        
        
 
        rootAnimGroup.animations?.append( rotate_4 )
//      rootAnimGroup.duration += rotate_4.duration * Double(rotate_4.repeatCount)
        if rootAnimGroup.duration < rotate_4.duration * Double(rotate_4.repeatCount) {
            rootAnimGroup.duration = rotate_4.duration * Double(rotate_4.repeatCount)
        }
        return rootAnimGroup
    }
 
    // Swift method for animation defined in 'rotate_a23.xml' file
    class func rotate_a23() -> CAAnimationGroup {
        let rootAnimGroup = CAAnimationGroup()
        rootAnimGroup.animations = []
        rootAnimGroup.fillMode = CAMediaTimingFillMode.forwards
        rootAnimGroup.isRemovedOnCompletion = false
        rootAnimGroup.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        rootAnimGroup.duration = 0
        
 
        let rotate_4 = CABasicAnimation(keyPath: "transform.rotation.z") 
        rotate_4.duration = 1
        rotate_4.autoreverses = false
        rotate_4.repeatCount = 1
        rotate_4.fromValue = 0
        rotate_4.toValue = 6.283185        //  360 Degrees 
        
        
 
        rootAnimGroup.animations?.append( rotate_4 )
//      rootAnimGroup.duration += rotate_4.duration * Double(rotate_4.repeatCount)
        if rootAnimGroup.duration < rotate_4.duration * Double(rotate_4.repeatCount) {
            rootAnimGroup.duration = rotate_4.duration * Double(rotate_4.repeatCount)
        }
        return rootAnimGroup
    }
 
    // Swift method for animation defined in 'rotate_a31.xml' file
    class func rotate_a31() -> CAAnimationGroup {
        let rootAnimGroup = CAAnimationGroup()
        rootAnimGroup.animations = []
        rootAnimGroup.fillMode = CAMediaTimingFillMode.forwards
        rootAnimGroup.isRemovedOnCompletion = false
        rootAnimGroup.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        rootAnimGroup.duration = 0
        
 
        let rotate_4 = CABasicAnimation(keyPath: "transform.rotation.z") 
        rotate_4.duration = 1
        rotate_4.autoreverses = false
        rotate_4.repeatCount = 1
        rotate_4.fromValue = 0
        rotate_4.toValue = 6.283185        //  360 Degrees 
        
        
 
        rootAnimGroup.animations?.append( rotate_4 )
//      rootAnimGroup.duration += rotate_4.duration * Double(rotate_4.repeatCount)
        if rootAnimGroup.duration < rotate_4.duration * Double(rotate_4.repeatCount) {
            rootAnimGroup.duration = rotate_4.duration * Double(rotate_4.repeatCount)
        }
        return rootAnimGroup
    }
 
    // Swift method for animation defined in 'rotate_a32.xml' file
    class func rotate_a32() -> CAAnimationGroup {
        let rootAnimGroup = CAAnimationGroup()
        rootAnimGroup.animations = []
        rootAnimGroup.fillMode = CAMediaTimingFillMode.forwards
        rootAnimGroup.isRemovedOnCompletion = false
        rootAnimGroup.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        rootAnimGroup.duration = 0
        
 
        let rotate_4 = CABasicAnimation(keyPath: "transform.rotation.z") 
        rotate_4.duration = 1
        rotate_4.autoreverses = false
        rotate_4.repeatCount = 1
        rotate_4.fromValue = 0
        rotate_4.toValue = 6.283185        //  360 Degrees 
        
        
 
        rootAnimGroup.animations?.append( rotate_4 )
//      rootAnimGroup.duration += rotate_4.duration * Double(rotate_4.repeatCount)
        if rootAnimGroup.duration < rotate_4.duration * Double(rotate_4.repeatCount) {
            rootAnimGroup.duration = rotate_4.duration * Double(rotate_4.repeatCount)
        }
        return rootAnimGroup
    }
 
    // Swift method for animation defined in 'rotate_a33.xml' file
    class func rotate_a33() -> CAAnimationGroup {
        let rootAnimGroup = CAAnimationGroup()
        rootAnimGroup.animations = []
        rootAnimGroup.fillMode = CAMediaTimingFillMode.forwards
        rootAnimGroup.isRemovedOnCompletion = false
        rootAnimGroup.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        rootAnimGroup.duration = 0
        
 
        let rotate_4 = CABasicAnimation(keyPath: "transform.rotation.z") 
        rotate_4.duration = 1
        rotate_4.autoreverses = false
        rotate_4.repeatCount = 1
        rotate_4.fromValue = 0
        rotate_4.toValue = 6.283185        //  360 Degrees 
        
        
 
        rootAnimGroup.animations?.append( rotate_4 )
//      rootAnimGroup.duration += rotate_4.duration * Double(rotate_4.repeatCount)
        if rootAnimGroup.duration < rotate_4.duration * Double(rotate_4.repeatCount) {
            rootAnimGroup.duration = rotate_4.duration * Double(rotate_4.repeatCount)
        }
        return rootAnimGroup
    }
 
    // Swift method for animation defined in 'scale.xml' file
    class func scale() -> CAAnimationGroup {
        let rootAnimGroup = CAAnimationGroup()
        rootAnimGroup.animations = []
        rootAnimGroup.fillMode = CAMediaTimingFillMode.forwards
        rootAnimGroup.isRemovedOnCompletion = false
        rootAnimGroup.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        rootAnimGroup.duration = 0
        
 
        var scale_4 = CABasicAnimation(keyPath: "transform.scale.x") 
        scale_4.duration = 1
        scale_4.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.easeOut )
        scale_4.autoreverses = true
        scale_4.repeatCount = Float.greatestFiniteMagnitude
        scale_4.fromValue = 0.0  ;  scale_4.toValue = 1.0
        rootAnimGroup.animations?.append( scale_4 )
        
        scale_4 = CABasicAnimation(keyPath: "transform.scale.y") 
        scale_4.duration = 1
        scale_4.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.easeOut )
        scale_4.autoreverses = true
        scale_4.repeatCount = Float.greatestFiniteMagnitude
        scale_4.fromValue = 0.0  ;  scale_4.toValue = 1.0
        rootAnimGroup.animations?.append( scale_4 )
        
        
 
        rootAnimGroup.animations?.append( scale_4 )
//      rootAnimGroup.duration += scale_4.duration * Double(scale_4.repeatCount)
        if rootAnimGroup.duration < scale_4.duration * Double(scale_4.repeatCount) {
            rootAnimGroup.duration = scale_4.duration * Double(scale_4.repeatCount)
        }
        return rootAnimGroup
    }
 
    // Swift method for animation defined in 'sequential.xml' file
    class func sequential() -> CAAnimationGroup {
        let rootAnimGroup = CAAnimationGroup()
        rootAnimGroup.animations = []
        rootAnimGroup.fillMode = CAMediaTimingFillMode.forwards
        rootAnimGroup.isRemovedOnCompletion = false
        rootAnimGroup.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        rootAnimGroup.duration = 0
        
 
        let translate_8 = CABasicAnimation(keyPath: "position") 
        translate_8.beginTime = 0.3
        translate_8.duration = 0.4
        translate_8.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        translate_8.repeatCount = 1
        
        
        
        
 
        rootAnimGroup.animations?.append( translate_8 )
//      rootAnimGroup.duration += translate_8.duration * Double(translate_8.repeatCount)
        if rootAnimGroup.duration < translate_8.duration * Double(translate_8.repeatCount) {
            rootAnimGroup.duration = translate_8.duration * Double(translate_8.repeatCount)
        }
        let translate_9 = CABasicAnimation(keyPath: "position") 
        translate_9.beginTime = 1.1
        translate_9.duration = 0.4
        translate_9.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        translate_9.repeatCount = 1
        
        
        
        
 
        rootAnimGroup.animations?.append( translate_9 )
//      rootAnimGroup.duration += translate_9.duration * Double(translate_9.repeatCount)
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
        translate_11.beginTime = 1.9
        translate_11.duration = 0.4
        translate_11.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        translate_11.repeatCount = 1
        
        
        
        
 
        set2_Group.animations?.append( translate_11 )
        let translate_12 = CABasicAnimation(keyPath: "position") 
        translate_12.beginTime = 2.7
        translate_12.duration = 0.4
        translate_12.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        translate_12.repeatCount = 1
        
        
        
        
 
        set2_Group.animations?.append( translate_12 )
        rootAnimGroup.animations?.append( set2_Group )
 
        let rotate_13 = CABasicAnimation(keyPath: "transform.rotation.z") 
        rotate_13.beginTime = 3.8
        rotate_13.duration = 1
        rotate_13.autoreverses = false
        rotate_13.repeatCount = Float.greatestFiniteMagnitude
        rotate_13.fromValue = 0
        rotate_13.toValue = 6.283185        //  360 Degrees 
        
        
 
        rootAnimGroup.animations?.append( rotate_13 )
//      rootAnimGroup.duration += rotate_13.duration * Double(rotate_13.repeatCount)
        if rootAnimGroup.duration < rotate_13.duration * Double(rotate_13.repeatCount) {
            rootAnimGroup.duration = rotate_13.duration * Double(rotate_13.repeatCount)
        }
        return rootAnimGroup
    }
 
    // Swift method for animation defined in 'slide_down.xml' file
    class func slide_down() -> CAAnimationGroup {
        let rootAnimGroup = CAAnimationGroup()
        rootAnimGroup.animations = []
        rootAnimGroup.fillMode = CAMediaTimingFillMode.forwards
        rootAnimGroup.isRemovedOnCompletion = false
        rootAnimGroup.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        rootAnimGroup.duration = 0
        
 
        
        let scale_4 = CABasicAnimation(keyPath: "transform.scale.y") 
        scale_4.duration = 0.5
        scale_4.repeatCount = 1
        scale_4.fromValue = 0.0  ;  scale_4.toValue = 1.0
        rootAnimGroup.animations?.append( scale_4 )
        
        
 
        rootAnimGroup.animations?.append( scale_4 )
//      rootAnimGroup.duration += scale_4.duration * Double(scale_4.repeatCount)
        if rootAnimGroup.duration < scale_4.duration * Double(scale_4.repeatCount) {
            rootAnimGroup.duration = scale_4.duration * Double(scale_4.repeatCount)
        }
        return rootAnimGroup
    }
 
    // Swift method for animation defined in 'slide_up.xml' file
    class func slide_up() -> CAAnimationGroup {
        let rootAnimGroup = CAAnimationGroup()
        rootAnimGroup.animations = []
        rootAnimGroup.fillMode = CAMediaTimingFillMode.forwards
        rootAnimGroup.isRemovedOnCompletion = false
        rootAnimGroup.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        rootAnimGroup.duration = 0
        
 
        
        let scale_4 = CABasicAnimation(keyPath: "transform.scale.y") 
        scale_4.duration = 0.5
        scale_4.repeatCount = 1
        scale_4.fromValue = 1.0  ;  scale_4.toValue = 0.0
        rootAnimGroup.animations?.append( scale_4 )
        
        
 
        rootAnimGroup.animations?.append( scale_4 )
//      rootAnimGroup.duration += scale_4.duration * Double(scale_4.repeatCount)
        if rootAnimGroup.duration < scale_4.duration * Double(scale_4.repeatCount) {
            rootAnimGroup.duration = scale_4.duration * Double(scale_4.repeatCount)
        }
        return rootAnimGroup
    }
 
    // Swift method for animation defined in 'together.xml' file
    class func together() -> CAAnimationGroup {
        let rootAnimGroup = CAAnimationGroup()
        rootAnimGroup.animations = []
        rootAnimGroup.fillMode = CAMediaTimingFillMode.forwards
        rootAnimGroup.isRemovedOnCompletion = false
        rootAnimGroup.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        rootAnimGroup.duration = 0
        
 
        var scale_5 = CABasicAnimation(keyPath: "transform.scale.x") 
        scale_5.duration = 2
        scale_5.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        scale_5.repeatCount = 1
        scale_5.fromValue = 1  ;  scale_5.toValue = 4
        rootAnimGroup.animations?.append( scale_5 )
        
        scale_5 = CABasicAnimation(keyPath: "transform.scale.y") 
        scale_5.duration = 2
        scale_5.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        scale_5.repeatCount = 1
        scale_5.fromValue = 1  ;  scale_5.toValue = 4
        rootAnimGroup.animations?.append( scale_5 )
        
        
 
        rootAnimGroup.animations?.append( scale_5 )
//      rootAnimGroup.duration += scale_5.duration * Double(scale_5.repeatCount)
        if rootAnimGroup.duration < scale_5.duration * Double(scale_5.repeatCount) {
            rootAnimGroup.duration = scale_5.duration * Double(scale_5.repeatCount)
        }
        let rotate_6 = CABasicAnimation(keyPath: "transform.rotation.z") 
        rotate_6.duration = 1
        rotate_6.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        rotate_6.autoreverses = false
        rotate_6.repeatCount = Float.greatestFiniteMagnitude
        rotate_6.fromValue = 0
        rotate_6.toValue = 6.283185        //  360 Degrees 
        
        
 
        rootAnimGroup.animations?.append( rotate_6 )
//      rootAnimGroup.duration += rotate_6.duration * Double(rotate_6.repeatCount)
        if rootAnimGroup.duration < rotate_6.duration * Double(rotate_6.repeatCount) {
            rootAnimGroup.duration = rotate_6.duration * Double(rotate_6.repeatCount)
        }
        return rootAnimGroup
    }
 
    // Swift method for animation defined in 'zoom_in.xml' file
    class func zoom_in() -> CAAnimationGroup {
        let rootAnimGroup = CAAnimationGroup()
        rootAnimGroup.animations = []
        rootAnimGroup.fillMode = CAMediaTimingFillMode.forwards
        rootAnimGroup.isRemovedOnCompletion = false
        rootAnimGroup.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        rootAnimGroup.duration = 0
        
 
        var scale_4 = CABasicAnimation(keyPath: "transform.scale.x") 
        scale_4.duration = 0.5
        scale_4.repeatCount = 1
        scale_4.fromValue = 1  ;  scale_4.toValue = 3
        rootAnimGroup.animations?.append( scale_4 )
        
        scale_4 = CABasicAnimation(keyPath: "transform.scale.y") 
        scale_4.duration = 0.5
        scale_4.repeatCount = 1
        scale_4.fromValue = 1  ;  scale_4.toValue = 3
        rootAnimGroup.animations?.append( scale_4 )
        
        
 
        rootAnimGroup.animations?.append( scale_4 )
//      rootAnimGroup.duration += scale_4.duration * Double(scale_4.repeatCount)
        if rootAnimGroup.duration < scale_4.duration * Double(scale_4.repeatCount) {
            rootAnimGroup.duration = scale_4.duration * Double(scale_4.repeatCount)
        }
        return rootAnimGroup
    }
 
    // Swift method for animation defined in 'zoom_out.xml' file
    class func zoom_out() -> CAAnimationGroup {
        let rootAnimGroup = CAAnimationGroup()
        rootAnimGroup.animations = []
        rootAnimGroup.fillMode = CAMediaTimingFillMode.forwards
        rootAnimGroup.isRemovedOnCompletion = false
        rootAnimGroup.timingFunction = CAMediaTimingFunction( name: CAMediaTimingFunctionName.linear )
        rootAnimGroup.duration = 0
        
        var scale_4 = CABasicAnimation(keyPath: "transform.scale.x")
        scale_4.duration = 0.5
        scale_4.repeatCount = 1
        scale_4.fromValue = 1.0  ;  scale_4.toValue = 0.5
        rootAnimGroup.animations?.append( scale_4 )
        
        scale_4 = CABasicAnimation(keyPath: "transform.scale.y") 
        scale_4.duration = 0.5
        scale_4.repeatCount = 1
        scale_4.fromValue = 1.0  ;  scale_4.toValue = 0.5
        rootAnimGroup.animations?.append( scale_4 )
        
        rootAnimGroup.animations?.append( scale_4 )
//      rootAnimGroup.duration += scale_4.duration * Double(scale_4.repeatCount)
        if rootAnimGroup.duration < scale_4.duration * Double(scale_4.repeatCount) {
            rootAnimGroup.duration = scale_4.duration * Double(scale_4.repeatCount)
        }
        return rootAnimGroup
    }
 
} 
