//****************************************************************************************
//  Anima_Delegate.swift
//
//  Copyright (C) 2019 Reflect Code Technologies (OPC) Pvt. Ltd.
//  For detailed please check - http://ReflectCode.com  
//
//  Description - Simple class to store reference to method to be called by deligate
//                The instance of this class can be assigned to "deligate" property
//                This class can also be we created inlined 
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
//****************************************************************************************

import UIKit

class Anim_Delegate: NSObject, CAAnimationDelegate {

    var onAnimationStart : ((_ animation : CAAnimation) ->  ())?
    var onAnimationEnd : ((_ animation : CAAnimation, _ finished : Bool) -> ())?
   
    init(onAnimationStart : ((_ animation : CAAnimation) ->  ())? , onAnimationEnd : ((_ animation : CAAnimation, _ finished : Bool) -> ())? ) {
        self.onAnimationStart = onAnimationStart
        self.onAnimationEnd = onAnimationEnd
        super.init()
    }

    init(onAnimationStart : ((_ animation : CAAnimation) ->  ())? ) {
        self.onAnimationStart = onAnimationStart
        self.onAnimationEnd = nil
        super.init()
    }

    init(onAnimationEnd : ((_ animation : CAAnimation, _ finished : Bool) -> ())? ) {
        self.onAnimationStart = nil
        self.onAnimationEnd = onAnimationEnd
        super.init()
    }

   
    // CAAnimationDelegate method
    func animationDidStart( _ anim: CAAnimation ) {
        if let onAnimationStart = onAnimationStart {
            onAnimationStart(anim)
        }
    }

    // CAAnimationDelegate method
    func animationDidStop( _ anim: CAAnimation, finished flag: Bool ) {
        if let onAnimationEnd = onAnimationEnd {
            onAnimationEnd(anim, flag)
        }
    }

}
