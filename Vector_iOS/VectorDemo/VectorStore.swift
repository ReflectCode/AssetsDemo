//
//  RC_VectorStore.swift
//  Project : VectorSample
//
//  Created by ReflectCode.com
//  Class for storing the vector images defined for the project
//  This code is auto generated from vector and shape xml files from source android project
//
 
import UIKit

class VectorStore{
 
    /* Usage guide : 
         let vectorBack = RC_VectorStore.defaultVector(viewBound: testImageView.bounds)
         let vectorBack.strokeColor = UIColor.blue.cgColor
         testImageView.layer.addSublayer(vectorBack)
    */
 
    // Sample vector image. Can be used as a place holder
 
    static var defaultVector_L1 = CAShapeLayer()  // Static variable referring to subLayers
    static var defaultVector_L2 = CAShapeLayer()  // These variables are initialized in defaultVector()
 
    class func defaultVector(viewBounds: CGRect) -> CAShapeLayer{
 
        // Square path
        let shPath1 = UIBezierPath()
        shPath1.move(to: CGPoint(x: 0, y: 0))
        shPath1.addLine(to: CGPoint(x: 24, y: 0))
        shPath1.addLine(to: CGPoint(x: 24, y: 24))
        shPath1.addLine(to: CGPoint(x: 0, y: 24))
        shPath1.addLine(to: CGPoint(x: 0, y: 0))
        shPath1.close()
 
        // android:name = "L1" 
        defaultVector_L1.masksToBounds = true
        defaultVector_L1.fillColor = UIColor.clear.cgColor           // Default is black
        defaultVector_L1.opacity = 1
        defaultVector_L1.frame = shPath1.bounds
        defaultVector_L1.path = shPath1.cgPath
 
 
        // Circle and exclemation path
        let shPath2 = UIBezierPath()
 
        shPath2.move(to: CGPoint(x: 11, y: 15))
        shPath2.addLine(to: CGPoint(x: 13, y: 15))
        shPath2.addLine(to: CGPoint(x: 13, y: 17))
        shPath2.addLine(to: CGPoint(x: 11, y: 17))
        shPath2.close()
 
        shPath2.move(to: CGPoint(x: 11, y: 7))
        shPath2.addLine(to: CGPoint(x: 13, y: 7))
        shPath2.addLine(to: CGPoint(x: 13, y: 13))
        shPath2.addLine(to: CGPoint(x: 11, y: 13))
        shPath2.close()
 
        // Outer circle
        shPath2.move(to: CGPoint(x: 11.99, y: 2))
        shPath2.addCurve(to: CGPoint(x: 2, y: 12), controlPoint1: CGPoint(x: 6.47, y: 2), controlPoint2: CGPoint(x: 2, y: 6.48))
        shPath2.addCurve(to: CGPoint(x: 11.99, y: 22), controlPoint1: CGPoint(x: 2, y: 18), controlPoint2: CGPoint(x: 6.47, y: 22))
        shPath2.addCurve(to: CGPoint(x: 22, y: 12), controlPoint1: CGPoint(x: 17.52, y: 22), controlPoint2: CGPoint(x: 22, y: 17.52))
        shPath2.addCurve(to: CGPoint(x: 11.99, y: 2), controlPoint1: CGPoint(x: 22, y: 6), controlPoint2: CGPoint(x: 17.52, y: 2))
        shPath2.close()
 
        // Inner Circle
        shPath2.move(to: CGPoint(x: 12, y: 20))
        shPath2.addCurve(to: CGPoint(x: 4, y: 12), controlPoint1: CGPoint(x: 7.58, y: 20), controlPoint2: CGPoint(x: 4, y: 16.42))
        shPath2.addCurve(to: CGPoint(x: 12, y: 4), controlPoint1: CGPoint(x: 4, y: 8), controlPoint2: CGPoint(x: 7.58, y: 4))
        shPath2.addCurve(to: CGPoint(x: 20, y: 12), controlPoint1: CGPoint(x: 16, y: 4), controlPoint2: CGPoint(x: 20, y: 7.58))
        shPath2.addCurve(to: CGPoint(x: 12, y: 20), controlPoint1: CGPoint(x: 20, y: 16), controlPoint2: CGPoint(x: 16.24, y: 20))
        shPath2.close()
 
        // android:name = "L2" 
        defaultVector_L2.masksToBounds = true
        defaultVector_L2.opacity = 1
        defaultVector_L2.bounds = shPath2.bounds
        defaultVector_L2.frame = shPath2.bounds
        defaultVector_L2.path = shPath2.cgPath
        defaultVector_L1.addSublayer(defaultVector_L2)
 
 
        // Resize the Root Shape layer to parent size
        let parentMinSide = min(viewBounds.width , viewBounds.height)
        let shapeLayerMinSize = max(defaultVector_L1.bounds.size.width, defaultVector_L1.bounds.size.height)
        let factor = parentMinSide / shapeLayerMinSize
 
        let fillAspectTransform = CGAffineTransform(scaleX: factor, y: factor)
        defaultVector_L1.setAffineTransform(fillAspectTransform)
        defaultVector_L1.frame = viewBounds
 
        return defaultVector_L1
        
    }
 
 
// Swift code for vector image defined in 'face.xml' File 
 
    static var mouth_layer = CAShapeLayer()

    class func face(viewBounds: CGRect) -> CAShapeLayer{
        let face_vect1 = CAShapeLayer()
        let vectorBounds = CGRect(x: 0, y: 0, width: 100, height: 100)
        face_vect1.masksToBounds = true
        face_vect1.fillColor = UIColor.clear.cgColor
        face_vect1.bounds = vectorBounds
        face_vect1.opacity = 1
        face_vect1.setAffineTransform(CGAffineTransform(scaleX: viewBounds.width / 100, y: viewBounds.height / 100))
        face_vect1.frame = viewBounds

        let path1_path = UIBezierPath()

        path1_path.move(to: CGPoint(x: 50, y: 50))
        path1_path.move(to: CGPoint(x: 2, y: 50))
        path1_path.addCurve(to: CGPoint(x: 98, y: 50), controlPoint1: CGPoint(x: 2, y: 68), controlPoint2: CGPoint(x: 98, y: 68))
        path1_path.addCurve(to: CGPoint(x: 2, y: 50), controlPoint1: CGPoint(x: 98, y: 68), controlPoint2: CGPoint(x: 2, y: 68))
        let path1_layer = CAShapeLayer()
        path1_layer.frame = viewBounds
        path1_layer.path = path1_path.cgPath
        path1_layer.opacity = 1
        path1_layer.fillColor = UIColor(named: "yellow")?.cgColor
        face_vect1.addSublayer(path1_layer)

        let path2_path = UIBezierPath()

        path2_path.move(to: CGPoint(x: 35, y: 40))
        path2_path.move(to: CGPoint(x: 28, y: 40))
        path2_path.addCurve(to: CGPoint(x: 42, y: 40), controlPoint1: CGPoint(x: 28, y: 54.4), controlPoint2: CGPoint(x: 42, y: 54.4))
        path2_path.addCurve(to: CGPoint(x: 28, y: 40), controlPoint1: CGPoint(x: 42, y: 54.4), controlPoint2: CGPoint(x: 28, y: 54.4))
        let path2_layer = CAShapeLayer()
        path2_layer.frame = viewBounds
        path2_layer.path = path2_path.cgPath
        path2_layer.opacity = 1
        path2_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        face_vect1.addSublayer(path2_layer)

        let path3_path = UIBezierPath()

        path3_path.move(to: CGPoint(x: 65, y: 40))
        path3_path.move(to: CGPoint(x: 58, y: 40))
        path3_path.addCurve(to: CGPoint(x: 72, y: 40), controlPoint1: CGPoint(x: 58, y: 54.4), controlPoint2: CGPoint(x: 72, y: 54.4))
        path3_path.addCurve(to: CGPoint(x: 58, y: 40), controlPoint1: CGPoint(x: 72, y: 54.4), controlPoint2: CGPoint(x: 58, y: 54.4))
        let path3_layer = CAShapeLayer()
        path3_layer.frame = viewBounds
        path3_layer.path = path3_path.cgPath
        path3_layer.opacity = 1
        path3_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        face_vect1.addSublayer(path3_layer)

        let mouth_path = UIBezierPath()

        mouth_path.move(to: CGPoint(x: 30, y: 65))
        mouth_path.addCurve(to: CGPoint(x: 70, y: 65), controlPoint1: CGPoint(x: 50, y: 85), controlPoint2: CGPoint(x: 50, y: 85))
        mouth_layer.frame = viewBounds
        mouth_layer.path = mouth_path.cgPath
        mouth_layer.opacity = 1
        mouth_layer.lineWidth = 4
        mouth_layer.strokeColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        mouth_layer.lineCap = CAShapeLayerLineCap.round
        face_vect1.addSublayer(mouth_layer)
  
        // face_vect1.rasterizationScale = UIScreen.main.scale
        // face_vect1.shouldRasterize = true    // ToDo : Check if this improves performance
        return face_vect1
    }
 
// Swift code for vector image defined in 'face_2.xml' File 
 
    static var mouth2_layer = CAShapeLayer()

    class func face_2(viewBounds: CGRect) -> CAShapeLayer{
        let face_2_vect1 = CAShapeLayer()
        let vectorBounds = CGRect(x: 0, y: 0, width: 100, height: 100)
        face_2_vect1.masksToBounds = true
        face_2_vect1.fillColor = UIColor.clear.cgColor
        face_2_vect1.bounds = vectorBounds
        face_2_vect1.opacity = 1
        face_2_vect1.setAffineTransform(CGAffineTransform(scaleX: viewBounds.width / 100, y: viewBounds.height / 100))
        face_2_vect1.frame = viewBounds

        let path1_path = UIBezierPath()

        path1_path.move(to: CGPoint(x: 50, y: 50))
        path1_path.move(to: CGPoint(x: 0, y: 50))
        path1_path.addCurve(to: CGPoint(x: 100, y: 50), controlPoint1: CGPoint(x: 0, y: 118), controlPoint2: CGPoint(x: 100, y: 118))
        let path1_layer = CAShapeLayer()
        path1_layer.frame = viewBounds
        path1_layer.path = path1_path.cgPath
        path1_layer.opacity = 1
        path1_layer.fillColor = UIColor(named: "colorPrimaryDark")?.cgColor
        face_2_vect1.addSublayer(path1_layer)

        let path2_path = UIBezierPath()

        path2_path.move(to: CGPoint(x: 50, y: 50))
        path2_path.move(to: CGPoint(x: 2, y: 50))
        path2_path.addCurve(to: CGPoint(x: 98, y: 50), controlPoint1: CGPoint(x: 2, y: 115), controlPoint2: CGPoint(x: 98, y: 115))
        path2_path.addCurve(to: CGPoint(x: 2, y: 50), controlPoint1: CGPoint(x: 98, y: -15), controlPoint2: CGPoint(x: 2, y: -15))
        let path2_layer = CAShapeLayer()
        path2_layer.frame = viewBounds
        path2_layer.path = path2_path.cgPath
        path2_layer.opacity = 1
        path2_layer.fillColor = UIColor(named: "yellow")?.cgColor
        face_2_vect1.addSublayer(path2_layer)

        let path3_path = UIBezierPath()

        path3_path.move(to: CGPoint(x: 35, y: 40))
        path3_path.move(to: CGPoint(x: 28, y: 40))
        path3_path.addCurve(to: CGPoint(x: 42, y: 40), controlPoint1: CGPoint(x: 28, y: 49), controlPoint2: CGPoint(x: 42, y: 49))
        path3_path.addCurve(to: CGPoint(x: 28, y: 40), controlPoint1: CGPoint(x: 42, y: 31), controlPoint2: CGPoint(x: 28, y: 31))
        let path3_layer = CAShapeLayer()
        path3_layer.frame = viewBounds
        path3_layer.path = path3_path.cgPath
        path3_layer.opacity = 1
        path3_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        face_2_vect1.addSublayer(path3_layer)

        let path4_path = UIBezierPath()

        path4_path.move(to: CGPoint(x: 65, y: 40))
        path4_path.move(to: CGPoint(x: 58, y: 40))
        path4_path.addCurve(to: CGPoint(x: 72, y: 40), controlPoint1: CGPoint(x: 58, y: 49), controlPoint2: CGPoint(x: 72, y: 49))
        path4_path.addCurve(to: CGPoint(x: 58, y: 40), controlPoint1: CGPoint(x: 72, y: 31), controlPoint2: CGPoint(x: 58, y: 31))
        let path4_layer = CAShapeLayer()
        path4_layer.frame = viewBounds
        path4_layer.path = path4_path.cgPath
        path4_layer.opacity = 1
        path4_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        face_2_vect1.addSublayer(path4_layer)

        let mouth2_path = UIBezierPath()

        mouth2_path.move(to: CGPoint(x: 30, y: 65))
        mouth2_path.addCurve(to: CGPoint(x: 70, y: 65), controlPoint1: CGPoint(x: 50, y: 85), controlPoint2: CGPoint(x: 50, y: 85))
        mouth2_layer.frame = viewBounds
        mouth2_layer.path = mouth2_path.cgPath
        mouth2_layer.opacity = 1
        mouth2_layer.lineWidth = 4
        mouth2_layer.strokeColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        mouth2_layer.lineCap = CAShapeLayerLineCap.round
        face_2_vect1.addSublayer(mouth2_layer)
  
        // face_2_vect1.rasterizationScale = UIScreen.main.scale
        // face_2_vect1.shouldRasterize = true    // ToDo : Check if this improves performance
        return face_2_vect1
    }
 
// Swift code for vector image defined in 'heart_vector.xml' File 
 
    static var heart_path_layer = CAShapeLayer()

    class func heart_vector(viewBounds: CGRect) -> CAShapeLayer{
        let heart_vector_vect1 = CAShapeLayer()
        let vectorBounds = CGRect(x: 0, y: 0, width: 100, height: 100)
        heart_vector_vect1.masksToBounds = true
        heart_vector_vect1.fillColor = UIColor.clear.cgColor
        heart_vector_vect1.bounds = vectorBounds
        heart_vector_vect1.opacity = 1
        heart_vector_vect1.setAffineTransform(CGAffineTransform(scaleX: viewBounds.width / 100, y: viewBounds.height / 100))
        heart_vector_vect1.frame = viewBounds

        let heart_path = UIBezierPath()

        heart_path.move(to: CGPoint(x: 25.119, y: 2.564))
        heart_path.addCurve(to: CGPoint(x: 49.999, y: 20.176), controlPoint1: CGPoint(x: 37.553, y: 2.587), controlPoint2: CGPoint(x: 43.799, y: 8.456))
        heart_path.addCurve(to: CGPoint(x: 74.876, y: 2.564), controlPoint1: CGPoint(x: 56.199, y: 8.455), controlPoint2: CGPoint(x: 62.445, y: 2.587))
        heart_path.addCurve(to: CGPoint(x: 99.937, y: 26.224), controlPoint1: CGPoint(x: 88.686, y: 2.539), controlPoint2: CGPoint(x: 99.911, y: 13.139))
        heart_path.addCurve(to: CGPoint(x: 49.999, y: 97.436), controlPoint1: CGPoint(x: 99.97, y: 49.932), controlPoint2: CGPoint(x: 74.985, y: 73.684))
        heart_path.addCurve(to: CGPoint(x: 0.064, y: 26.224), controlPoint1: CGPoint(x: 25.016, y: 73.685), controlPoint2: CGPoint(x: 0.03, y: 49.932))
        heart_path.addCurve(to: CGPoint(x: 25.119, y: 2.564), controlPoint1: CGPoint(x: 0.085, y: 13.14), controlPoint2: CGPoint(x: 11.309, y: 2.539))
        heart_path.close()

        heart_path_layer.frame = viewBounds
        heart_path_layer.opacity = 1
        heart_vector_vect1.addSublayer(heart_path_layer)

        let grad1 = CAGradientLayer()
        grad1.frame = vectorBounds
        grad1.startPoint = CGPoint(x: 0.25, y: 0.25)
        grad1.endPoint = CGPoint(x: 0.75, y: 0.75)
        grad1.colors = [ UIColor(named: "colorPink")?.cgColor , 
                         UIColor(named: "colorPrimary")?.cgColor , 
                       ]
        grad1.locations = [ 0.0, 1.0, ]
        let grad1_Mask = CAShapeLayer()        // Mask layer for gradient
        grad1_Mask.frame = viewBounds
        grad1_Mask.path = heart_path.cgPath
        grad1_Mask.opacity = 1
        grad1_Mask.fillColor = UIColor.black.cgColor
        grad1.mask = grad1_Mask
        heart_path_layer.addSublayer(grad1)        // Apply Mask layer to gradient
  
        // heart_vector_vect1.rasterizationScale = UIScreen.main.scale
        // heart_vector_vect1.shouldRasterize = true    // ToDo : Check if this improves performance
        return heart_vector_vect1
    }
 
// Swift code for vector image defined in 'ic_3d_rotation_48px.xml' File 
 

    class func ic_3d_rotation_48px(viewBounds: CGRect) -> CAShapeLayer{
        let ic_3d_rotation_48px_vect1 = CAShapeLayer()
        let vectorBounds = CGRect(x: 0, y: 0, width: 48, height: 48)
        ic_3d_rotation_48px_vect1.masksToBounds = true
        ic_3d_rotation_48px_vect1.fillColor = UIColor.clear.cgColor
        ic_3d_rotation_48px_vect1.bounds = vectorBounds
        ic_3d_rotation_48px_vect1.opacity = 1
        ic_3d_rotation_48px_vect1.setAffineTransform(CGAffineTransform(scaleX: viewBounds.width / 48, y: viewBounds.height / 48))
        ic_3d_rotation_48px_vect1.frame = viewBounds

        let path1_path = UIBezierPath()

        path1_path.move(to: CGPoint(x: 15.03, y: 42.97))
        path1_path.addCurve(to: CGPoint(x: 3.1, y: 26), controlPoint1: CGPoint(x: 8.5, y: 39.87), controlPoint2: CGPoint(x: 3.81, y: 33.52))
        path1_path.addLine(to: CGPoint(x: 0.1, y: 26))
        path1_path.addCurve(to: CGPoint(x: 24, y: 48), controlPoint1: CGPoint(x: 1.12, y: 38.32), controlPoint2: CGPoint(x: 11.42, y: 48))
        path1_path.addCurve(to: CGPoint(x: 25.32, y: 47.93), controlPoint1: CGPoint(x: 24.45, y: 48), controlPoint2: CGPoint(x: 24.88, y: 47.96))
        path1_path.addLine(to: CGPoint(x: 17.7, y: 40.3))
        path1_path.addLine(to: CGPoint(x: 15.03, y: 42.97))
        path1_path.close()

        path1_path.move(to: CGPoint(x: 16.81, y: 29.92))
        path1_path.addCurve(to: CGPoint(x: 15.76, y: 29.75), controlPoint1: CGPoint(x: 16.43, y: 29.92), controlPoint2: CGPoint(x: 16.08, y: 29.87))
        path1_path.addCurve(to: CGPoint(x: 14.96, y: 29.28), controlPoint1: CGPoint(x: 15.45, y: 29.64), controlPoint2: CGPoint(x: 15.18, y: 29.48))
        path1_path.addCurve(to: CGPoint(x: 14.45, y: 28.55), controlPoint1: CGPoint(x: 14.74, y: 29.08), controlPoint2: CGPoint(x: 14.57, y: 28.83))
        path1_path.addCurve(to: CGPoint(x: 14.27, y: 27.61), controlPoint1: CGPoint(x: 14.33, y: 28.26), controlPoint2: CGPoint(x: 14.27, y: 27.95))
        path1_path.addLine(to: CGPoint(x: 11.67, y: 27.61))
        path1_path.addCurve(to: CGPoint(x: 12.09, y: 29.51), controlPoint1: CGPoint(x: 11.67, y: 28.33), controlPoint2: CGPoint(x: 11.81, y: 28.96))
        path1_path.addCurve(to: CGPoint(x: 13.21, y: 30.88), controlPoint1: CGPoint(x: 12.37, y: 30.06), controlPoint2: CGPoint(x: 12.74, y: 30.52))
        path1_path.addCurve(to: CGPoint(x: 14.84, y: 31.71), controlPoint1: CGPoint(x: 13.68, y: 31.25), controlPoint2: CGPoint(x: 14.22, y: 31.52))
        path1_path.addCurve(to: CGPoint(x: 16.78, y: 32), controlPoint1: CGPoint(x: 15.46, y: 31.91), controlPoint2: CGPoint(x: 16.1, y: 32))
        path1_path.addCurve(to: CGPoint(x: 18.85, y: 31.7), controlPoint1: CGPoint(x: 17.52, y: 32), controlPoint2: CGPoint(x: 18.21, y: 31.9))
        path1_path.addCurve(to: CGPoint(x: 20.51, y: 30.81), controlPoint1: CGPoint(x: 19.49, y: 31.5), controlPoint2: CGPoint(x: 20.04, y: 31.2))
        path1_path.addCurve(to: CGPoint(x: 21.61, y: 29.37), controlPoint1: CGPoint(x: 21.02, y: 30.62), controlPoint2: CGPoint(x: 21.34, y: 29.94))
        path1_path.addCurve(to: CGPoint(x: 22.01, y: 27.42), controlPoint1: CGPoint(x: 21.87, y: 28.8), controlPoint2: CGPoint(x: 22.01, y: 28.15))
        path1_path.addCurve(to: CGPoint(x: 21.87, y: 26.3), controlPoint1: CGPoint(x: 22.01, y: 27.03), controlPoint2: CGPoint(x: 21.96, y: 26.66))
        path1_path.addCurve(to: CGPoint(x: 21.42, y: 25.28), controlPoint1: CGPoint(x: 21.77, y: 25.94), controlPoint2: CGPoint(x: 21.62, y: 25.6))
        path1_path.addCurve(to: CGPoint(x: 20.61, y: 24.42), controlPoint1: CGPoint(x: 21.21, y: 24.96), controlPoint2: CGPoint(x: 20.94, y: 24.68))
        path1_path.addCurve(to: CGPoint(x: 19.4, y: 23.79), controlPoint1: CGPoint(x: 20.28, y: 24.17), controlPoint2: CGPoint(x: 19.87, y: 23.96))
        path1_path.addCurve(to: CGPoint(x: 20.45, y: 23.13), controlPoint1: CGPoint(x: 19.8, y: 23.61), controlPoint2: CGPoint(x: 20.15, y: 23.39))
        path1_path.addCurve(to: CGPoint(x: 21.2, y: 22.3), controlPoint1: CGPoint(x: 20.75, y: 22.87), controlPoint2: CGPoint(x: 21, y: 22.59))
        path1_path.addCurve(to: CGPoint(x: 21.65, y: 21.38), controlPoint1: CGPoint(x: 21.4, y: 22), controlPoint2: CGPoint(x: 21.55, y: 21.7))
        path1_path.addCurve(to: CGPoint(x: 21.8, y: 20.43), controlPoint1: CGPoint(x: 21.75, y: 21.06), controlPoint2: CGPoint(x: 21.8, y: 20.74))
        path1_path.addCurve(to: CGPoint(x: 21.44, y: 18.51), controlPoint1: CGPoint(x: 21.8, y: 19.7), controlPoint2: CGPoint(x: 21.68, y: 19.06))
        path1_path.addCurve(to: CGPoint(x: 20.42, y: 17.13), controlPoint1: CGPoint(x: 21.2, y: 17.96), controlPoint2: CGPoint(x: 20.86, y: 17.5))
        path1_path.addCurve(to: CGPoint(x: 18.84, y: 16.29), controlPoint1: CGPoint(x: 19.98, y: 16.76), controlPoint2: CGPoint(x: 19.46, y: 16.48))
        path1_path.addCurve(to: CGPoint(x: 16.78, y: 16), controlPoint1: CGPoint(x: 18.2, y: 16.09), controlPoint2: CGPoint(x: 17.52, y: 16))
        path1_path.addCurve(to: CGPoint(x: 14.78, y: 16.32), controlPoint1: CGPoint(x: 16.06, y: 16), controlPoint2: CGPoint(x: 15.39, y: 16.11))
        path1_path.addCurve(to: CGPoint(x: 13.21, y: 17.21), controlPoint1: CGPoint(x: 14.17, y: 16.53), controlPoint2: CGPoint(x: 13.65, y: 16.83))
        path1_path.addCurve(to: CGPoint(x: 12.18, y: 18.56), controlPoint1: CGPoint(x: 12.77, y: 17.59), controlPoint2: CGPoint(x: 12.43, y: 18.04))
        path1_path.addCurve(to: CGPoint(x: 11.81, y: 20.26), controlPoint1: CGPoint(x: 11.93, y: 19.08), controlPoint2: CGPoint(x: 11.81, y: 19.65))
        path1_path.addLine(to: CGPoint(x: 14.41, y: 20.26))
        path1_path.addCurve(to: CGPoint(x: 14.59, y: 19.36), controlPoint1: CGPoint(x: 14.41, y: 19.92), controlPoint2: CGPoint(x: 14.47, y: 19.62))
        path1_path.addCurve(to: CGPoint(x: 15.09, y: 18.68), controlPoint1: CGPoint(x: 14.71, y: 19.09), controlPoint2: CGPoint(x: 14.88, y: 18.86))
        path1_path.addCurve(to: CGPoint(x: 15.85, y: 18.24), controlPoint1: CGPoint(x: 15.3, y: 18.49), controlPoint2: CGPoint(x: 15.56, y: 18.34))
        path1_path.addCurve(to: CGPoint(x: 16.8, y: 18.08), controlPoint1: CGPoint(x: 16.14, y: 18.14), controlPoint2: CGPoint(x: 16.46, y: 18.08))
        path1_path.addCurve(to: CGPoint(x: 18.58, y: 18.7), controlPoint1: CGPoint(x: 17.6, y: 18.08), controlPoint2: CGPoint(x: 18.19, y: 18.29))
        path1_path.addCurve(to: CGPoint(x: 19.16, y: 20.43), controlPoint1: CGPoint(x: 18.97, y: 19.11), controlPoint2: CGPoint(x: 19.16, y: 19.69))
        path1_path.addCurve(to: CGPoint(x: 19, y: 21.4), controlPoint1: CGPoint(x: 19.16, y: 20.79), controlPoint2: CGPoint(x: 19.11, y: 21.11))
        path1_path.addCurve(to: CGPoint(x: 18.51, y: 22.15), controlPoint1: CGPoint(x: 18.89, y: 21.69), controlPoint2: CGPoint(x: 18.73, y: 21.94))
        path1_path.addCurve(to: CGPoint(x: 17.69, y: 22.64), controlPoint1: CGPoint(x: 18.29, y: 22.36), controlPoint2: CGPoint(x: 18.01, y: 22.52))
        path1_path.addCurve(to: CGPoint(x: 16.53, y: 22.82), controlPoint1: CGPoint(x: 17.36, y: 22.76), controlPoint2: CGPoint(x: 16.97, y: 22.82))
        path1_path.addLine(to: CGPoint(x: 14.99, y: 22.82))
        path1_path.addLine(to: CGPoint(x: 14.99, y: 24.87))
        path1_path.addLine(to: CGPoint(x: 16.53, y: 24.87))
        path1_path.addCurve(to: CGPoint(x: 17.72, y: 25.02), controlPoint1: CGPoint(x: 16.97, y: 24.87), controlPoint2: CGPoint(x: 17.37, y: 24.92))
        path1_path.addCurve(to: CGPoint(x: 18.62, y: 25.49), controlPoint1: CGPoint(x: 18.07, y: 25.12), controlPoint2: CGPoint(x: 18.37, y: 25.27))
        path1_path.addCurve(to: CGPoint(x: 19.2, y: 26.29), controlPoint1: CGPoint(x: 18.87, y: 25.7), controlPoint2: CGPoint(x: 19.06, y: 25.97))
        path1_path.addCurve(to: CGPoint(x: 19.4, y: 27.43), controlPoint1: CGPoint(x: 19.33, y: 26.61), controlPoint2: CGPoint(x: 19.4, y: 26.99))
        path1_path.addCurve(to: CGPoint(x: 18.7, y: 29.29), controlPoint1: CGPoint(x: 19.4, y: 28.24), controlPoint2: CGPoint(x: 19.17, y: 28.86))
        path1_path.addCurve(to: CGPoint(x: 16.81, y: 29.92), controlPoint1: CGPoint(x: 18.25, y: 29.71), controlPoint2: CGPoint(x: 17.62, y: 29.92))
        path1_path.close()

        path1_path.move(to: CGPoint(x: 33.93, y: 18.07))
        path1_path.addCurve(to: CGPoint(x: 31.66, y: 16.54), controlPoint1: CGPoint(x: 33.3, y: 17.41), controlPoint2: CGPoint(x: 32.54, y: 16.9))
        path1_path.addCurve(to: CGPoint(x: 28.73, y: 16), controlPoint1: CGPoint(x: 30.77, y: 16.18), controlPoint2: CGPoint(x: 29.8, y: 16))
        path1_path.addLine(to: CGPoint(x: 24, y: 16))
        path1_path.addLine(to: CGPoint(x: 24, y: 32))
        path1_path.addLine(to: CGPoint(x: 28.59, y: 32))
        path1_path.addCurve(to: CGPoint(x: 31.61, y: 31.46), controlPoint1: CGPoint(x: 29.7, y: 32), controlPoint2: CGPoint(x: 30.7, y: 31.82))
        path1_path.addCurve(to: CGPoint(x: 33.93, y: 29.93), controlPoint1: CGPoint(x: 32.52, y: 31.1), controlPoint2: CGPoint(x: 33.29, y: 30.59))
        path1_path.addCurve(to: CGPoint(x: 35.41, y: 27.54), controlPoint1: CGPoint(x: 34.57, y: 29.27), controlPoint2: CGPoint(x: 35.07, y: 28.47))
        path1_path.addCurve(to: CGPoint(x: 35.93, y: 24.4), controlPoint1: CGPoint(x: 35.76, y: 26.61), controlPoint2: CGPoint(x: 35.93, y: 25.56))
        path1_path.addLine(to: CGPoint(x: 35.93, y: 23.61))
        path1_path.addCurve(to: CGPoint(x: 35.4, y: 20.47), controlPoint1: CGPoint(x: 35.93, y: 22.45), controlPoint2: CGPoint(x: 35.75, y: 21.41))
        path1_path.addCurve(to: CGPoint(x: 33.93, y: 18.07), controlPoint1: CGPoint(x: 35.05, y: 19.53), controlPoint2: CGPoint(x: 34.56, y: 18.73))
        path1_path.close()

        path1_path.move(to: CGPoint(x: 33.14, y: 24.41))
        path1_path.addCurve(to: CGPoint(x: 32.85, y: 26.66), controlPoint1: CGPoint(x: 33.14, y: 25.24), controlPoint2: CGPoint(x: 33.05, y: 26))
        path1_path.addCurve(to: CGPoint(x: 32, y: 28.35), controlPoint1: CGPoint(x: 32.66, y: 27.33), controlPoint2: CGPoint(x: 32.38, y: 27.89))
        path1_path.addCurve(to: CGPoint(x: 30.58, y: 29.41), controlPoint1: CGPoint(x: 31.62, y: 28.81), controlPoint2: CGPoint(x: 31.15, y: 29.16))
        path1_path.addCurve(to: CGPoint(x: 28.59, y: 29.78), controlPoint1: CGPoint(x: 30.01, y: 29.65), controlPoint2: CGPoint(x: 29.35, y: 29.78))
        path1_path.addLine(to: CGPoint(x: 26.78, y: 29.78))
        path1_path.addLine(to: CGPoint(x: 26.78, y: 18.24))
        path1_path.addLine(to: CGPoint(x: 28.73, y: 18.24))
        path1_path.addCurve(to: CGPoint(x: 32.02, y: 19.61), controlPoint1: CGPoint(x: 30.17, y: 18.24), controlPoint2: CGPoint(x: 31.26, y: 18.7))
        path1_path.addCurve(to: CGPoint(x: 33.15, y: 23.59), controlPoint1: CGPoint(x: 32.77, y: 20.53), controlPoint2: CGPoint(x: 33.15, y: 21.85))
        path1_path.addLine(to: CGPoint(x: 33.15, y: 24.41))
        path1_path.close()

        path1_path.move(to: CGPoint(x: 24, y: 0))
        path1_path.addCurve(to: CGPoint(x: 22.68, y: 0.07), controlPoint1: CGPoint(x: 23.55, y: 0), controlPoint2: CGPoint(x: 23.12, y: 0.04))
        path1_path.addLine(to: CGPoint(x: 30.3, y: 7.7))
        path1_path.addLine(to: CGPoint(x: 32.96, y: 5.04))
        path1_path.addCurve(to: CGPoint(x: 44.9, y: 22), controlPoint1: CGPoint(x: 39.5, y: 8.13), controlPoint2: CGPoint(x: 44.19, y: 14.48))
        path1_path.addLine(to: CGPoint(x: 47.9, y: 22))
        path1_path.addCurve(to: CGPoint(x: 24, y: 0), controlPoint1: CGPoint(x: 46.88, y: 9.68), controlPoint2: CGPoint(x: 36.58, y: 0))
        path1_path.close()

        let path1_layer = CAShapeLayer()
        path1_layer.frame = viewBounds
        path1_layer.path = path1_path.cgPath
        path1_layer.opacity = 1
        path1_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        ic_3d_rotation_48px_vect1.addSublayer(path1_layer)
  
        // ic_3d_rotation_48px_vect1.rasterizationScale = UIScreen.main.scale
        // ic_3d_rotation_48px_vect1.shouldRasterize = true    // ToDo : Check if this improves performance
        return ic_3d_rotation_48px_vect1
    }
 
// Swift code for vector image defined in 'ic_baseline_error_outline_24px.xml' File 
 

    class func ic_baseline_error_outline_24px(viewBounds: CGRect) -> CAShapeLayer{
        let ic_baseline_error_outline_24px_vect1 = CAShapeLayer()
        let vectorBounds = CGRect(x: 0, y: 0, width: 24, height: 24)
        ic_baseline_error_outline_24px_vect1.masksToBounds = true
        ic_baseline_error_outline_24px_vect1.fillColor = UIColor.clear.cgColor
        ic_baseline_error_outline_24px_vect1.bounds = vectorBounds
        ic_baseline_error_outline_24px_vect1.opacity = 1
        ic_baseline_error_outline_24px_vect1.setAffineTransform(CGAffineTransform(scaleX: viewBounds.width / 24, y: viewBounds.height / 24))
        ic_baseline_error_outline_24px_vect1.frame = viewBounds

        let path1_path = UIBezierPath()

        path1_path.move(to: CGPoint(x: 11, y: 15))
        path1_path.addLine(to: CGPoint(x: 13, y: 15))
        path1_path.addLine(to: CGPoint(x: 13, y: 17))
        path1_path.addLine(to: CGPoint(x: 11, y: 17))
        path1_path.close()

        path1_path.move(to: CGPoint(x: 11, y: 7))
        path1_path.addLine(to: CGPoint(x: 13, y: 7))
        path1_path.addLine(to: CGPoint(x: 13, y: 13))
        path1_path.addLine(to: CGPoint(x: 11, y: 13))
        path1_path.close()

        path1_path.move(to: CGPoint(x: 11.99, y: 2))
        path1_path.addCurve(to: CGPoint(x: 2, y: 12), controlPoint1: CGPoint(x: 6.47, y: 2), controlPoint2: CGPoint(x: 2, y: 6.48))
        path1_path.addCurve(to: CGPoint(x: 11.99, y: 22), controlPoint1: CGPoint(x: 2, y: 18), controlPoint2: CGPoint(x: 6.47, y: 22))
        path1_path.addCurve(to: CGPoint(x: 22, y: 12), controlPoint1: CGPoint(x: 17.52, y: 22), controlPoint2: CGPoint(x: 22, y: 17.52))
        path1_path.addCurve(to: CGPoint(x: 11.99, y: 2), controlPoint1: CGPoint(x: 22, y: 6), controlPoint2: CGPoint(x: 17.52, y: 2))
        path1_path.close()

        path1_path.move(to: CGPoint(x: 12, y: 20))
        path1_path.addCurve(to: CGPoint(x: 4, y: 12), controlPoint1: CGPoint(x: 7.58, y: 20), controlPoint2: CGPoint(x: 4, y: 16.42))
        path1_path.addCurve(to: CGPoint(x: 12, y: 4), controlPoint1: CGPoint(x: 4, y: 8), controlPoint2: CGPoint(x: 7.58, y: 4))
        path1_path.addCurve(to: CGPoint(x: 20, y: 12), controlPoint1: CGPoint(x: 16, y: 4), controlPoint2: CGPoint(x: 20, y: 7.58))
        path1_path.addCurve(to: CGPoint(x: 12, y: 20), controlPoint1: CGPoint(x: 20, y: 16), controlPoint2: CGPoint(x: 16.42, y: 20))
        path1_path.close()

        let path1_layer = CAShapeLayer()
        path1_layer.frame = viewBounds
        path1_layer.path = path1_path.cgPath
        path1_layer.opacity = 1
        path1_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        ic_baseline_error_outline_24px_vect1.addSublayer(path1_layer)
  
        // ic_baseline_error_outline_24px_vect1.rasterizationScale = UIScreen.main.scale
        // ic_baseline_error_outline_24px_vect1.shouldRasterize = true    // ToDo : Check if this improves performance
        return ic_baseline_error_outline_24px_vect1
    }
 
// Swift code for vector image defined in 'ic_fingerprint_48px.xml' File 
 

    class func ic_fingerprint_48px(viewBounds: CGRect) -> CAShapeLayer{
        let ic_fingerprint_48px_vect1 = CAShapeLayer()
        let vectorBounds = CGRect(x: 0, y: 0, width: 48, height: 48)
        ic_fingerprint_48px_vect1.masksToBounds = true
        ic_fingerprint_48px_vect1.fillColor = UIColor.clear.cgColor
        ic_fingerprint_48px_vect1.bounds = vectorBounds
        ic_fingerprint_48px_vect1.opacity = 1
        ic_fingerprint_48px_vect1.setAffineTransform(CGAffineTransform(scaleX: viewBounds.width / 48, y: viewBounds.height / 48))
        ic_fingerprint_48px_vect1.frame = viewBounds

        let path1_path = UIBezierPath()

        path1_path.move(to: CGPoint(x: 35.62, y: 8.94))
        path1_path.addCurve(to: CGPoint(x: 35.16, y: 8.83), controlPoint1: CGPoint(x: 35.46, y: 8.94), controlPoint2: CGPoint(x: 35.31, y: 8.9))
        path1_path.addCurve(to: CGPoint(x: 24.02, y: 6), controlPoint1: CGPoint(x: 31.33, y: 6.85), controlPoint2: CGPoint(x: 28, y: 6))
        path1_path.addCurve(to: CGPoint(x: 12.88, y: 8.82), controlPoint1: CGPoint(x: 20.05, y: 6), controlPoint2: CGPoint(x: 16.31, y: 6.95))
        path1_path.addCurve(to: CGPoint(x: 11.52, y: 8.42), controlPoint1: CGPoint(x: 12.39, y: 9.08), controlPoint2: CGPoint(x: 11.79, y: 8.91))
        path1_path.addCurve(to: CGPoint(x: 11.92, y: 7.06), controlPoint1: CGPoint(x: 11.26, y: 7.93), controlPoint2: CGPoint(x: 11.43, y: 7.33))
        path1_path.addCurve(to: CGPoint(x: 24.02, y: 4), controlPoint1: CGPoint(x: 15.65, y: 5.03), controlPoint2: CGPoint(x: 19.72, y: 4))
        path1_path.addCurve(to: CGPoint(x: 36.08, y: 7.05), controlPoint1: CGPoint(x: 28.28, y: 4), controlPoint2: CGPoint(x: 32, y: 4.94))
        path1_path.addCurve(to: CGPoint(x: 36.51, y: 8.4), controlPoint1: CGPoint(x: 36.57, y: 7.3), controlPoint2: CGPoint(x: 36.76, y: 7.91))
        path1_path.addCurve(to: CGPoint(x: 35.62, y: 8.94), controlPoint1: CGPoint(x: 36.33, y: 8.74), controlPoint2: CGPoint(x: 35.98, y: 8.94))
        path1_path.close()

        path1_path.move(to: CGPoint(x: 7, y: 19.44))
        path1_path.addCurve(to: CGPoint(x: 6.42, y: 19.26), controlPoint1: CGPoint(x: 6.8, y: 19.44), controlPoint2: CGPoint(x: 6.6, y: 19.38))
        path1_path.addCurve(to: CGPoint(x: 6.18, y: 17.87), controlPoint1: CGPoint(x: 5.97, y: 18.94), controlPoint2: CGPoint(x: 5.86, y: 18.32))
        path1_path.addCurve(to: CGPoint(x: 13.69, y: 11.32), controlPoint1: CGPoint(x: 8.16, y: 15.07), controlPoint2: CGPoint(x: 10.69, y: 12.87))
        path1_path.addCurve(to: CGPoint(x: 34.32, y: 11.3), controlPoint1: CGPoint(x: 19.98, y: 8.07), controlPoint2: CGPoint(x: 28.02, y: 8.06))
        path1_path.addCurve(to: CGPoint(x: 41.82, y: 17.8), controlPoint1: CGPoint(x: 37.31, y: 12.84), controlPoint2: CGPoint(x: 39.83, y: 15.02))
        path1_path.addCurve(to: CGPoint(x: 41.59, y: 19.19), controlPoint1: CGPoint(x: 42.14, y: 18.25), controlPoint2: CGPoint(x: 42.04, y: 18.87))
        path1_path.addCurve(to: CGPoint(x: 40.19, y: 18.96), controlPoint1: CGPoint(x: 41.14, y: 19.51), controlPoint2: CGPoint(x: 40.51, y: 19.41))
        path1_path.addCurve(to: CGPoint(x: 33.41, y: 13.08), controlPoint1: CGPoint(x: 38.39, y: 16.44), controlPoint2: CGPoint(x: 36.11, y: 14.46))
        path1_path.addCurve(to: CGPoint(x: 14.61, y: 13.1), controlPoint1: CGPoint(x: 27.67, y: 10.13), controlPoint2: CGPoint(x: 20.34, y: 10.14))
        path1_path.addCurve(to: CGPoint(x: 7.82, y: 19.03), controlPoint1: CGPoint(x: 11.9, y: 14.5), controlPoint2: CGPoint(x: 9.61, y: 16.49))
        path1_path.addCurve(to: CGPoint(x: 7, y: 19.44), controlPoint1: CGPoint(x: 7.62, y: 19.3), controlPoint2: CGPoint(x: 7.31, y: 19.44))
        path1_path.close()

        path1_path.move(to: CGPoint(x: 19.51, y: 43.57))
        path1_path.addCurve(to: CGPoint(x: 18.8, y: 43.27), controlPoint1: CGPoint(x: 19.25, y: 43.57), controlPoint2: CGPoint(x: 19, y: 43.47))
        path1_path.addCurve(to: CGPoint(x: 14.78, y: 38), controlPoint1: CGPoint(x: 17.07, y: 41.52), controlPoint2: CGPoint(x: 16.13, y: 40.41))
        path1_path.addCurve(to: CGPoint(x: 12.67, y: 29.31), controlPoint1: CGPoint(x: 13.4, y: 35.54), controlPoint2: CGPoint(x: 12.67, y: 32.53))
        path1_path.addCurve(to: CGPoint(x: 24, y: 18.53), controlPoint1: CGPoint(x: 12.67, y: 23.37), controlPoint2: CGPoint(x: 17.75, y: 18.53))
        path1_path.addCurve(to: CGPoint(x: 35.33, y: 29.31), controlPoint1: CGPoint(x: 30, y: 18.06), controlPoint2: CGPoint(x: 35.33, y: 23.36))
        path1_path.addCurve(to: CGPoint(x: 34.33, y: 30.31), controlPoint1: CGPoint(x: 35.33, y: 29.86), controlPoint2: CGPoint(x: 34.88, y: 30.31))
        path1_path.addCurve(to: CGPoint(x: 33.33, y: 29.31), controlPoint1: CGPoint(x: 33.66, y: 30.62), controlPoint2: CGPoint(x: 33.33, y: 29.86))
        path1_path.addCurve(to: CGPoint(x: 24, y: 20.53), controlPoint1: CGPoint(x: 33.33, y: 24.47), controlPoint2: CGPoint(x: 29.15, y: 20.53))
        path1_path.addCurve(to: CGPoint(x: 14.67, y: 29.31), controlPoint1: CGPoint(x: 18.86, y: 20.53), controlPoint2: CGPoint(x: 14.67, y: 24.47))
        path1_path.addCurve(to: CGPoint(x: 16.52, y: 37.02), controlPoint1: CGPoint(x: 14.67, y: 32.19), controlPoint2: CGPoint(x: 15.31, y: 34.85))
        path1_path.addCurve(to: CGPoint(x: 20.21, y: 41.86), controlPoint1: CGPoint(x: 17.81, y: 39.32), controlPoint2: CGPoint(x: 18.67, y: 40.31))
        path1_path.addCurve(to: CGPoint(x: 20.2, y: 43.27), controlPoint1: CGPoint(x: 20.6, y: 42.25), controlPoint2: CGPoint(x: 20.6, y: 42.89))
        path1_path.addCurve(to: CGPoint(x: 19.51, y: 43.57), controlPoint1: CGPoint(x: 20.02, y: 43.48), controlPoint2: CGPoint(x: 19.76, y: 43.57))
        path1_path.close()

        path1_path.move(to: CGPoint(x: 33.84, y: 39.87))
        path1_path.addCurve(to: CGPoint(x: 27.64, y: 38.1), controlPoint1: CGPoint(x: 31.46, y: 39.87), controlPoint2: CGPoint(x: 29.37, y: 39.27))
        path1_path.addCurve(to: CGPoint(x: 22.89, y: 29.32), controlPoint1: CGPoint(x: 24.67, y: 36.08), controlPoint2: CGPoint(x: 22.89, y: 32.8))
        path1_path.addCurve(to: CGPoint(x: 23.89, y: 28.32), controlPoint1: CGPoint(x: 22.89, y: 28.77), controlPoint2: CGPoint(x: 23.34, y: 28.32))
        path1_path.addCurve(to: CGPoint(x: 24.89, y: 29.32), controlPoint1: CGPoint(x: 24.78, y: 28.64), controlPoint2: CGPoint(x: 24.89, y: 28.77))
        path1_path.addCurve(to: CGPoint(x: 28.77, y: 36.44), controlPoint1: CGPoint(x: 24.89, y: 32.13), controlPoint2: CGPoint(x: 26.34, y: 34.79))
        path1_path.addCurve(to: CGPoint(x: 33.84, y: 37.87), controlPoint1: CGPoint(x: 30.18, y: 37.4), controlPoint2: CGPoint(x: 31.84, y: 37.87))
        path1_path.addCurve(to: CGPoint(x: 35.93, y: 37.68), controlPoint1: CGPoint(x: 34.32, y: 37.87), controlPoint2: CGPoint(x: 35.13, y: 37.82))
        path1_path.addCurve(to: CGPoint(x: 37.09, y: 38.49), controlPoint1: CGPoint(x: 36.47, y: 37.58), controlPoint2: CGPoint(x: 36.99, y: 37.95))
        path1_path.addCurve(to: CGPoint(x: 36.28, y: 39.65), controlPoint1: CGPoint(x: 37.19, y: 39.03), controlPoint2: CGPoint(x: 36.82, y: 39.55))
        path1_path.addCurve(to: CGPoint(x: 33.84, y: 39.87), controlPoint1: CGPoint(x: 35.11, y: 39.86), controlPoint2: CGPoint(x: 34.12, y: 39.87))
        path1_path.close()

        path1_path.move(to: CGPoint(x: 29.81, y: 44))
        path1_path.addCurve(to: CGPoint(x: 29.55, y: 43.96), controlPoint1: CGPoint(x: 29.72, y: 44), controlPoint2: CGPoint(x: 29.63, y: 43.99))
        path1_path.addCurve(to: CGPoint(x: 22.12, y: 39.76), controlPoint1: CGPoint(x: 26.36, y: 43.09), controlPoint2: CGPoint(x: 24.28, y: 41.91))
        path1_path.addCurve(to: CGPoint(x: 17.79, y: 29.32), controlPoint1: CGPoint(x: 19.33, y: 36.98), controlPoint2: CGPoint(x: 17.79, y: 33.27))
        path1_path.addCurve(to: CGPoint(x: 23.95, y: 23.43), controlPoint1: CGPoint(x: 17.79, y: 26.07), controlPoint2: CGPoint(x: 20.55, y: 23.43))
        path1_path.addCurve(to: CGPoint(x: 30.11, y: 29.32), controlPoint1: CGPoint(x: 27.35, y: 23.43), controlPoint2: CGPoint(x: 30.11, y: 26.07))
        path1_path.addCurve(to: CGPoint(x: 34.27, y: 33.21), controlPoint1: CGPoint(x: 30.11, y: 31.46), controlPoint2: CGPoint(x: 31.98, y: 33.21))
        path1_path.addCurve(to: CGPoint(x: 38.43, y: 29.32), controlPoint1: CGPoint(x: 36.54, y: 33.42), controlPoint2: CGPoint(x: 38.43, y: 31.47))
        path1_path.addCurve(to: CGPoint(x: 23.94, y: 15.65), controlPoint1: CGPoint(x: 38.43, y: 21.78), controlPoint2: CGPoint(x: 31.93, y: 15.65))
        path1_path.addCurve(to: CGPoint(x: 10.72, y: 23.71), controlPoint1: CGPoint(x: 18.25, y: 15.65), controlPoint2: CGPoint(x: 13.06, y: 18.81))
        path1_path.addCurve(to: CGPoint(x: 9.54999999999999, y: 29.32), controlPoint1: CGPoint(x: 9.93999999999999, y: 25.33), controlPoint2: CGPoint(x: 9.54999999999999, y: 27.22))
        path1_path.addCurve(to: CGPoint(x: 10.88, y: 36.53), controlPoint1: CGPoint(x: 9.54999999999999, y: 30.88), controlPoint2: CGPoint(x: 9.68999999999999, y: 33.34))
        path1_path.addCurve(to: CGPoint(x: 10.29, y: 37.82), controlPoint1: CGPoint(x: 11.07, y: 37.05), controlPoint2: CGPoint(x: 10.81, y: 37.62))
        path1_path.addCurve(to: CGPoint(x: 8.99999999999999, y: 37.23), controlPoint1: CGPoint(x: 9.76999999999999, y: 38.01), controlPoint2: CGPoint(x: 9.19999999999999, y: 37.75))
        path1_path.addCurve(to: CGPoint(x: 7.53999999999999, y: 29.32), controlPoint1: CGPoint(x: 8.01999999999999, y: 34.6), controlPoint2: CGPoint(x: 7.53999999999999, y: 32.02))
        path1_path.addCurve(to: CGPoint(x: 8.90999999999999, y: 22.85), controlPoint1: CGPoint(x: 7.53999999999999, y: 26.92), controlPoint2: CGPoint(x: 7.99999999999999, y: 24.74))
        path1_path.addCurve(to: CGPoint(x: 23.93, y: 13.66), controlPoint1: CGPoint(x: 11.58, y: 17.27), controlPoint2: CGPoint(x: 17.48, y: 13.66))
        path1_path.addCurve(to: CGPoint(x: 40.42, y: 29.33), controlPoint1: CGPoint(x: 33.02, y: 13.66), controlPoint2: CGPoint(x: 40.42, y: 20.69))
        path1_path.addCurve(to: CGPoint(x: 34.26, y: 35.22), controlPoint1: CGPoint(x: 40.42, y: 32.58), controlPoint2: CGPoint(x: 37.65, y: 35.22))
        path1_path.addCurve(to: CGPoint(x: 28.1, y: 29.33), controlPoint1: CGPoint(x: 30.52, y: 35.44), controlPoint2: CGPoint(x: 28.1, y: 32.58))
        path1_path.addCurve(to: CGPoint(x: 23.94, y: 25.44), controlPoint1: CGPoint(x: 28.1, y: 27.19), controlPoint2: CGPoint(x: 26.23, y: 25.44))
        path1_path.addCurve(to: CGPoint(x: 19.78, y: 29.33), controlPoint1: CGPoint(x: 21.88, y: 25.88), controlPoint2: CGPoint(x: 19.78, y: 27.18))
        path1_path.addCurve(to: CGPoint(x: 23.52, y: 38.35), controlPoint1: CGPoint(x: 19.78, y: 32.74), controlPoint2: CGPoint(x: 21.11, y: 35.95))
        path1_path.addCurve(to: CGPoint(x: 30.07, y: 42.04), controlPoint1: CGPoint(x: 25.41, y: 40.23), controlPoint2: CGPoint(x: 27.25, y: 41.27))
        path1_path.addCurve(to: CGPoint(x: 30.77, y: 43.27), controlPoint1: CGPoint(x: 30.6, y: 42.19), controlPoint2: CGPoint(x: 30.92, y: 42.74))
        path1_path.addCurve(to: CGPoint(x: 29.81, y: 44), controlPoint1: CGPoint(x: 30.65, y: 43.71), controlPoint2: CGPoint(x: 30.25, y: 44))
        path1_path.close()

        let path1_layer = CAShapeLayer()
        path1_layer.frame = viewBounds
        path1_layer.path = path1_path.cgPath
        path1_layer.opacity = 1
        path1_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        ic_fingerprint_48px_vect1.addSublayer(path1_layer)
  
        // ic_fingerprint_48px_vect1.rasterizationScale = UIScreen.main.scale
        // ic_fingerprint_48px_vect1.shouldRasterize = true    // ToDo : Check if this improves performance
        return ic_fingerprint_48px_vect1
    }
 
// Swift code for vector image defined in 'ic_language_48px.xml' File 
 

    class func ic_language_48px(viewBounds: CGRect) -> CAShapeLayer{
        let ic_language_48px_vect1 = CAShapeLayer()
        let vectorBounds = CGRect(x: 0, y: 0, width: 48, height: 48)
        ic_language_48px_vect1.masksToBounds = true
        ic_language_48px_vect1.fillColor = UIColor.clear.cgColor
        ic_language_48px_vect1.bounds = vectorBounds
        ic_language_48px_vect1.opacity = 1
        ic_language_48px_vect1.setAffineTransform(CGAffineTransform(scaleX: viewBounds.width / 48, y: viewBounds.height / 48))
        ic_language_48px_vect1.frame = viewBounds

        let path1_path = UIBezierPath()

        path1_path.move(to: CGPoint(x: 23.99, y: 4))
        path1_path.addCurve(to: CGPoint(x: 4, y: 24), controlPoint1: CGPoint(x: 12.94, y: 4), controlPoint2: CGPoint(x: 4, y: 12.95))
        path1_path.addCurve(to: CGPoint(x: 23.99, y: 44), controlPoint1: CGPoint(x: 4, y: 35), controlPoint2: CGPoint(x: 12.94, y: 44))
        path1_path.addCurve(to: CGPoint(x: 44, y: 24), controlPoint1: CGPoint(x: 35.04, y: 44), controlPoint2: CGPoint(x: 44, y: 35.05))
        path1_path.addCurve(to: CGPoint(x: 23.99, y: 4), controlPoint1: CGPoint(x: 44, y: 13), controlPoint2: CGPoint(x: 35.04, y: 4))
        path1_path.close()

        path1_path.move(to: CGPoint(x: 37.84, y: 16))
        path1_path.addLine(to: CGPoint(x: 31.94, y: 16))
        path1_path.addCurve(to: CGPoint(x: 29.18, y: 8.88), controlPoint1: CGPoint(x: 31.29, y: 13.5), controlPoint2: CGPoint(x: 30.38, y: 11.1))
        path1_path.addCurve(to: CGPoint(x: 37.84, y: 16), controlPoint1: CGPoint(x: 32.86, y: 10.14), controlPoint2: CGPoint(x: 35.92, y: 12.69))
        path1_path.close()

        path1_path.move(to: CGPoint(x: 24, y: 8.07))
        path1_path.addCurve(to: CGPoint(x: 27.82, y: 16), controlPoint1: CGPoint(x: 25.67, y: 10.47), controlPoint2: CGPoint(x: 26.97, y: 13.14))
        path1_path.addLine(to: CGPoint(x: 20.18, y: 16))
        path1_path.addCurve(to: CGPoint(x: 24, y: 8.07), controlPoint1: CGPoint(x: 21.03, y: 13.14), controlPoint2: CGPoint(x: 22.33, y: 10.47))
        path1_path.close()

        path1_path.move(to: CGPoint(x: 8.52, y: 28))
        path1_path.addCurve(to: CGPoint(x: 8, y: 24), controlPoint1: CGPoint(x: 8.19, y: 26.72), controlPoint2: CGPoint(x: 8, y: 25.38))
        path1_path.addCurve(to: CGPoint(x: 8.52, y: 20), controlPoint1: CGPoint(x: 8, y: 23), controlPoint2: CGPoint(x: 8.19, y: 21.28))
        path1_path.addLine(to: CGPoint(x: 15.27, y: 20))
        path1_path.addCurve(to: CGPoint(x: 15, y: 24), controlPoint1: CGPoint(x: 15.11, y: 21.31), controlPoint2: CGPoint(x: 15, y: 22.64))
        path1_path.addCurve(to: CGPoint(x: 15.28, y: 28), controlPoint1: CGPoint(x: 15, y: 25.36), controlPoint2: CGPoint(x: 15.11, y: 26.69))
        path1_path.addLine(to: CGPoint(x: 8.52, y: 28))
        path1_path.close()

        path1_path.move(to: CGPoint(x: 10.15, y: 32))
        path1_path.addLine(to: CGPoint(x: 16.05, y: 32))
        path1_path.addCurve(to: CGPoint(x: 18.81, y: 39.13), controlPoint1: CGPoint(x: 16.7, y: 34.5), controlPoint2: CGPoint(x: 17.61, y: 36.9))
        path1_path.addCurve(to: CGPoint(x: 10.15, y: 32), controlPoint1: CGPoint(x: 15.13, y: 37.87), controlPoint2: CGPoint(x: 12.07, y: 35.31))
        path1_path.close()

        path1_path.move(to: CGPoint(x: 16.05, y: 16))
        path1_path.addLine(to: CGPoint(x: 10.15, y: 16))
        path1_path.addCurve(to: CGPoint(x: 18.81, y: 8.87), controlPoint1: CGPoint(x: 12.07, y: 12.69), controlPoint2: CGPoint(x: 15.13, y: 10.13))
        path1_path.addCurve(to: CGPoint(x: 16.05, y: 16), controlPoint1: CGPoint(x: 17.61, y: 11.1), controlPoint2: CGPoint(x: 16.7, y: 13.5))
        path1_path.close()

        path1_path.move(to: CGPoint(x: 24, y: 39.93))
        path1_path.addCurve(to: CGPoint(x: 20.18, y: 32), controlPoint1: CGPoint(x: 22.34, y: 37.53), controlPoint2: CGPoint(x: 21.04, y: 34.86))
        path1_path.addLine(to: CGPoint(x: 27.82, y: 32))
        path1_path.addCurve(to: CGPoint(x: 24, y: 39.93), controlPoint1: CGPoint(x: 26.96, y: 34.86), controlPoint2: CGPoint(x: 25.66, y: 37.53))
        path1_path.close()

        path1_path.move(to: CGPoint(x: 28.68, y: 28))
        path1_path.addLine(to: CGPoint(x: 19.32, y: 28))
        path1_path.addCurve(to: CGPoint(x: 19, y: 24), controlPoint1: CGPoint(x: 19.13, y: 26.69), controlPoint2: CGPoint(x: 19, y: 25.36))
        path1_path.addCurve(to: CGPoint(x: 19.32, y: 20), controlPoint1: CGPoint(x: 19, y: 22.64), controlPoint2: CGPoint(x: 19.13, y: 21.31))
        path1_path.addLine(to: CGPoint(x: 28.68, y: 20))
        path1_path.addCurve(to: CGPoint(x: 29, y: 24), controlPoint1: CGPoint(x: 28.87, y: 21.31), controlPoint2: CGPoint(x: 29, y: 22.64))
        path1_path.addCurve(to: CGPoint(x: 28.68, y: 28), controlPoint1: CGPoint(x: 29, y: 25.36), controlPoint2: CGPoint(x: 28.87, y: 26.69))
        path1_path.close()

        path1_path.move(to: CGPoint(x: 29.19, y: 39.12))
        path1_path.addCurve(to: CGPoint(x: 31.95, y: 32), controlPoint1: CGPoint(x: 30.39, y: 36.89), controlPoint2: CGPoint(x: 31.3, y: 34.5))
        path1_path.addLine(to: CGPoint(x: 37.85, y: 32))
        path1_path.addCurve(to: CGPoint(x: 29.19, y: 39.12), controlPoint1: CGPoint(x: 35.92, y: 35.31), controlPoint2: CGPoint(x: 32.86, y: 37.86))
        path1_path.close()

        path1_path.move(to: CGPoint(x: 32.72, y: 28))
        path1_path.addCurve(to: CGPoint(x: 33, y: 24), controlPoint1: CGPoint(x: 32.88, y: 26.69), controlPoint2: CGPoint(x: 33, y: 25.36))
        path1_path.addCurve(to: CGPoint(x: 32.72, y: 20), controlPoint1: CGPoint(x: 33, y: 22.64), controlPoint2: CGPoint(x: 32.89, y: 21.31))
        path1_path.addLine(to: CGPoint(x: 39.47, y: 20))
        path1_path.addCurve(to: CGPoint(x: 40, y: 24), controlPoint1: CGPoint(x: 39.8, y: 21.28), controlPoint2: CGPoint(x: 40, y: 22.62))
        path1_path.addCurve(to: CGPoint(x: 39.47, y: 28), controlPoint1: CGPoint(x: 40, y: 25), controlPoint2: CGPoint(x: 39.81, y: 26.72))
        path1_path.addLine(to: CGPoint(x: 32.72, y: 28))
        path1_path.close()

        let path1_layer = CAShapeLayer()
        path1_layer.frame = viewBounds
        path1_layer.path = path1_path.cgPath
        path1_layer.opacity = 1
        path1_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        ic_language_48px_vect1.addSublayer(path1_layer)
  
        // ic_language_48px_vect1.rasterizationScale = UIScreen.main.scale
        // ic_language_48px_vect1.shouldRasterize = true    // ToDo : Check if this improves performance
        return ic_language_48px_vect1
    }
 
// Swift code for vector image defined in 'ic_launcher_background.xml' File 
 

    class func ic_launcher_background(viewBounds: CGRect) -> CAShapeLayer{
        let ic_launcher_background_vect1 = CAShapeLayer()
        let vectorBounds = CGRect(x: 0, y: 0, width: 108, height: 108)
        ic_launcher_background_vect1.masksToBounds = true
        ic_launcher_background_vect1.fillColor = UIColor.clear.cgColor
        ic_launcher_background_vect1.bounds = vectorBounds
        ic_launcher_background_vect1.opacity = 1
        ic_launcher_background_vect1.setAffineTransform(CGAffineTransform(scaleX: viewBounds.width / 108, y: viewBounds.height / 108))
        ic_launcher_background_vect1.frame = viewBounds

        let path1_path = UIBezierPath()

        path1_path.move(to: CGPoint(x: 0, y: 0))
        path1_path.addLine(to: CGPoint(x: 108, y: 0))
        path1_path.addLine(to: CGPoint(x: 108, y: 108))
        path1_path.addLine(to: CGPoint(x: 0, y: 108))
        path1_path.close()

        let path1_layer = CAShapeLayer()
        path1_layer.frame = viewBounds
        path1_layer.path = path1_path.cgPath
        path1_layer.opacity = 1
        path1_layer.fillColor = UIColor(red: 0, green: 0.52157, blue: 0.46667, alpha: 1).cgColor
        ic_launcher_background_vect1.addSublayer(path1_layer)

        let path2_path = UIBezierPath()

        path2_path.move(to: CGPoint(x: 9, y: 0))
        path2_path.addLine(to: CGPoint(x: 9, y: 108))
        let path2_layer = CAShapeLayer()
        path2_layer.frame = viewBounds
        path2_layer.path = path2_path.cgPath
        path2_layer.opacity = 1
        path2_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        path2_layer.lineWidth = 0.8
        path2_layer.strokeColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2).cgColor
        ic_launcher_background_vect1.addSublayer(path2_layer)

        let path3_path = UIBezierPath()

        path3_path.move(to: CGPoint(x: 19, y: 0))
        path3_path.addLine(to: CGPoint(x: 19, y: 108))
        let path3_layer = CAShapeLayer()
        path3_layer.frame = viewBounds
        path3_layer.path = path3_path.cgPath
        path3_layer.opacity = 1
        path3_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        path3_layer.lineWidth = 0.8
        path3_layer.strokeColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2).cgColor
        ic_launcher_background_vect1.addSublayer(path3_layer)

        let path4_path = UIBezierPath()

        path4_path.move(to: CGPoint(x: 29, y: 0))
        path4_path.addLine(to: CGPoint(x: 29, y: 108))
        let path4_layer = CAShapeLayer()
        path4_layer.frame = viewBounds
        path4_layer.path = path4_path.cgPath
        path4_layer.opacity = 1
        path4_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        path4_layer.lineWidth = 0.8
        path4_layer.strokeColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2).cgColor
        ic_launcher_background_vect1.addSublayer(path4_layer)

        let path5_path = UIBezierPath()

        path5_path.move(to: CGPoint(x: 39, y: 0))
        path5_path.addLine(to: CGPoint(x: 39, y: 108))
        let path5_layer = CAShapeLayer()
        path5_layer.frame = viewBounds
        path5_layer.path = path5_path.cgPath
        path5_layer.opacity = 1
        path5_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        path5_layer.lineWidth = 0.8
        path5_layer.strokeColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2).cgColor
        ic_launcher_background_vect1.addSublayer(path5_layer)

        let path6_path = UIBezierPath()

        path6_path.move(to: CGPoint(x: 49, y: 0))
        path6_path.addLine(to: CGPoint(x: 49, y: 108))
        let path6_layer = CAShapeLayer()
        path6_layer.frame = viewBounds
        path6_layer.path = path6_path.cgPath
        path6_layer.opacity = 1
        path6_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        path6_layer.lineWidth = 0.8
        path6_layer.strokeColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2).cgColor
        ic_launcher_background_vect1.addSublayer(path6_layer)

        let path7_path = UIBezierPath()

        path7_path.move(to: CGPoint(x: 59, y: 0))
        path7_path.addLine(to: CGPoint(x: 59, y: 108))
        let path7_layer = CAShapeLayer()
        path7_layer.frame = viewBounds
        path7_layer.path = path7_path.cgPath
        path7_layer.opacity = 1
        path7_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        path7_layer.lineWidth = 0.8
        path7_layer.strokeColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2).cgColor
        ic_launcher_background_vect1.addSublayer(path7_layer)

        let path8_path = UIBezierPath()

        path8_path.move(to: CGPoint(x: 69, y: 0))
        path8_path.addLine(to: CGPoint(x: 69, y: 108))
        let path8_layer = CAShapeLayer()
        path8_layer.frame = viewBounds
        path8_layer.path = path8_path.cgPath
        path8_layer.opacity = 1
        path8_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        path8_layer.lineWidth = 0.8
        path8_layer.strokeColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2).cgColor
        ic_launcher_background_vect1.addSublayer(path8_layer)

        let path9_path = UIBezierPath()

        path9_path.move(to: CGPoint(x: 79, y: 0))
        path9_path.addLine(to: CGPoint(x: 79, y: 108))
        let path9_layer = CAShapeLayer()
        path9_layer.frame = viewBounds
        path9_layer.path = path9_path.cgPath
        path9_layer.opacity = 1
        path9_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        path9_layer.lineWidth = 0.8
        path9_layer.strokeColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2).cgColor
        ic_launcher_background_vect1.addSublayer(path9_layer)

        let path10_path = UIBezierPath()

        path10_path.move(to: CGPoint(x: 89, y: 0))
        path10_path.addLine(to: CGPoint(x: 89, y: 108))
        let path10_layer = CAShapeLayer()
        path10_layer.frame = viewBounds
        path10_layer.path = path10_path.cgPath
        path10_layer.opacity = 1
        path10_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        path10_layer.lineWidth = 0.8
        path10_layer.strokeColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2).cgColor
        ic_launcher_background_vect1.addSublayer(path10_layer)

        let path11_path = UIBezierPath()

        path11_path.move(to: CGPoint(x: 99, y: 0))
        path11_path.addLine(to: CGPoint(x: 99, y: 108))
        let path11_layer = CAShapeLayer()
        path11_layer.frame = viewBounds
        path11_layer.path = path11_path.cgPath
        path11_layer.opacity = 1
        path11_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        path11_layer.lineWidth = 0.8
        path11_layer.strokeColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2).cgColor
        ic_launcher_background_vect1.addSublayer(path11_layer)

        let path12_path = UIBezierPath()

        path12_path.move(to: CGPoint(x: 0, y: 9))
        path12_path.addLine(to: CGPoint(x: 108, y: 9))
        let path12_layer = CAShapeLayer()
        path12_layer.frame = viewBounds
        path12_layer.path = path12_path.cgPath
        path12_layer.opacity = 1
        path12_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        path12_layer.lineWidth = 0.8
        path12_layer.strokeColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2).cgColor
        ic_launcher_background_vect1.addSublayer(path12_layer)

        let path13_path = UIBezierPath()

        path13_path.move(to: CGPoint(x: 0, y: 19))
        path13_path.addLine(to: CGPoint(x: 108, y: 19))
        let path13_layer = CAShapeLayer()
        path13_layer.frame = viewBounds
        path13_layer.path = path13_path.cgPath
        path13_layer.opacity = 1
        path13_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        path13_layer.lineWidth = 0.8
        path13_layer.strokeColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2).cgColor
        ic_launcher_background_vect1.addSublayer(path13_layer)

        let path14_path = UIBezierPath()

        path14_path.move(to: CGPoint(x: 0, y: 29))
        path14_path.addLine(to: CGPoint(x: 108, y: 29))
        let path14_layer = CAShapeLayer()
        path14_layer.frame = viewBounds
        path14_layer.path = path14_path.cgPath
        path14_layer.opacity = 1
        path14_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        path14_layer.lineWidth = 0.8
        path14_layer.strokeColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2).cgColor
        ic_launcher_background_vect1.addSublayer(path14_layer)

        let path15_path = UIBezierPath()

        path15_path.move(to: CGPoint(x: 0, y: 39))
        path15_path.addLine(to: CGPoint(x: 108, y: 39))
        let path15_layer = CAShapeLayer()
        path15_layer.frame = viewBounds
        path15_layer.path = path15_path.cgPath
        path15_layer.opacity = 1
        path15_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        path15_layer.lineWidth = 0.8
        path15_layer.strokeColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2).cgColor
        ic_launcher_background_vect1.addSublayer(path15_layer)

        let path16_path = UIBezierPath()

        path16_path.move(to: CGPoint(x: 0, y: 49))
        path16_path.addLine(to: CGPoint(x: 108, y: 49))
        let path16_layer = CAShapeLayer()
        path16_layer.frame = viewBounds
        path16_layer.path = path16_path.cgPath
        path16_layer.opacity = 1
        path16_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        path16_layer.lineWidth = 0.8
        path16_layer.strokeColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2).cgColor
        ic_launcher_background_vect1.addSublayer(path16_layer)

        let path17_path = UIBezierPath()

        path17_path.move(to: CGPoint(x: 0, y: 59))
        path17_path.addLine(to: CGPoint(x: 108, y: 59))
        let path17_layer = CAShapeLayer()
        path17_layer.frame = viewBounds
        path17_layer.path = path17_path.cgPath
        path17_layer.opacity = 1
        path17_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        path17_layer.lineWidth = 0.8
        path17_layer.strokeColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2).cgColor
        ic_launcher_background_vect1.addSublayer(path17_layer)

        let path18_path = UIBezierPath()

        path18_path.move(to: CGPoint(x: 0, y: 69))
        path18_path.addLine(to: CGPoint(x: 108, y: 69))
        let path18_layer = CAShapeLayer()
        path18_layer.frame = viewBounds
        path18_layer.path = path18_path.cgPath
        path18_layer.opacity = 1
        path18_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        path18_layer.lineWidth = 0.8
        path18_layer.strokeColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2).cgColor
        ic_launcher_background_vect1.addSublayer(path18_layer)

        let path19_path = UIBezierPath()

        path19_path.move(to: CGPoint(x: 0, y: 79))
        path19_path.addLine(to: CGPoint(x: 108, y: 79))
        let path19_layer = CAShapeLayer()
        path19_layer.frame = viewBounds
        path19_layer.path = path19_path.cgPath
        path19_layer.opacity = 1
        path19_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        path19_layer.lineWidth = 0.8
        path19_layer.strokeColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2).cgColor
        ic_launcher_background_vect1.addSublayer(path19_layer)

        let path20_path = UIBezierPath()

        path20_path.move(to: CGPoint(x: 0, y: 89))
        path20_path.addLine(to: CGPoint(x: 108, y: 89))
        let path20_layer = CAShapeLayer()
        path20_layer.frame = viewBounds
        path20_layer.path = path20_path.cgPath
        path20_layer.opacity = 1
        path20_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        path20_layer.lineWidth = 0.8
        path20_layer.strokeColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2).cgColor
        ic_launcher_background_vect1.addSublayer(path20_layer)

        let path21_path = UIBezierPath()

        path21_path.move(to: CGPoint(x: 0, y: 99))
        path21_path.addLine(to: CGPoint(x: 108, y: 99))
        let path21_layer = CAShapeLayer()
        path21_layer.frame = viewBounds
        path21_layer.path = path21_path.cgPath
        path21_layer.opacity = 1
        path21_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        path21_layer.lineWidth = 0.8
        path21_layer.strokeColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2).cgColor
        ic_launcher_background_vect1.addSublayer(path21_layer)

        let path22_path = UIBezierPath()

        path22_path.move(to: CGPoint(x: 19, y: 29))
        path22_path.addLine(to: CGPoint(x: 89, y: 29))
        let path22_layer = CAShapeLayer()
        path22_layer.frame = viewBounds
        path22_layer.path = path22_path.cgPath
        path22_layer.opacity = 1
        path22_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        path22_layer.lineWidth = 0.8
        path22_layer.strokeColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2).cgColor
        ic_launcher_background_vect1.addSublayer(path22_layer)

        let path23_path = UIBezierPath()

        path23_path.move(to: CGPoint(x: 19, y: 39))
        path23_path.addLine(to: CGPoint(x: 89, y: 39))
        let path23_layer = CAShapeLayer()
        path23_layer.frame = viewBounds
        path23_layer.path = path23_path.cgPath
        path23_layer.opacity = 1
        path23_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        path23_layer.lineWidth = 0.8
        path23_layer.strokeColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2).cgColor
        ic_launcher_background_vect1.addSublayer(path23_layer)

        let path24_path = UIBezierPath()

        path24_path.move(to: CGPoint(x: 19, y: 49))
        path24_path.addLine(to: CGPoint(x: 89, y: 49))
        let path24_layer = CAShapeLayer()
        path24_layer.frame = viewBounds
        path24_layer.path = path24_path.cgPath
        path24_layer.opacity = 1
        path24_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        path24_layer.lineWidth = 0.8
        path24_layer.strokeColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2).cgColor
        ic_launcher_background_vect1.addSublayer(path24_layer)

        let path25_path = UIBezierPath()

        path25_path.move(to: CGPoint(x: 19, y: 59))
        path25_path.addLine(to: CGPoint(x: 89, y: 59))
        let path25_layer = CAShapeLayer()
        path25_layer.frame = viewBounds
        path25_layer.path = path25_path.cgPath
        path25_layer.opacity = 1
        path25_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        path25_layer.lineWidth = 0.8
        path25_layer.strokeColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2).cgColor
        ic_launcher_background_vect1.addSublayer(path25_layer)

        let path26_path = UIBezierPath()

        path26_path.move(to: CGPoint(x: 19, y: 69))
        path26_path.addLine(to: CGPoint(x: 89, y: 69))
        let path26_layer = CAShapeLayer()
        path26_layer.frame = viewBounds
        path26_layer.path = path26_path.cgPath
        path26_layer.opacity = 1
        path26_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        path26_layer.lineWidth = 0.8
        path26_layer.strokeColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2).cgColor
        ic_launcher_background_vect1.addSublayer(path26_layer)

        let path27_path = UIBezierPath()

        path27_path.move(to: CGPoint(x: 19, y: 79))
        path27_path.addLine(to: CGPoint(x: 89, y: 79))
        let path27_layer = CAShapeLayer()
        path27_layer.frame = viewBounds
        path27_layer.path = path27_path.cgPath
        path27_layer.opacity = 1
        path27_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        path27_layer.lineWidth = 0.8
        path27_layer.strokeColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2).cgColor
        ic_launcher_background_vect1.addSublayer(path27_layer)

        let path28_path = UIBezierPath()

        path28_path.move(to: CGPoint(x: 29, y: 19))
        path28_path.addLine(to: CGPoint(x: 29, y: 89))
        let path28_layer = CAShapeLayer()
        path28_layer.frame = viewBounds
        path28_layer.path = path28_path.cgPath
        path28_layer.opacity = 1
        path28_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        path28_layer.lineWidth = 0.8
        path28_layer.strokeColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2).cgColor
        ic_launcher_background_vect1.addSublayer(path28_layer)

        let path29_path = UIBezierPath()

        path29_path.move(to: CGPoint(x: 39, y: 19))
        path29_path.addLine(to: CGPoint(x: 39, y: 89))
        let path29_layer = CAShapeLayer()
        path29_layer.frame = viewBounds
        path29_layer.path = path29_path.cgPath
        path29_layer.opacity = 1
        path29_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        path29_layer.lineWidth = 0.8
        path29_layer.strokeColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2).cgColor
        ic_launcher_background_vect1.addSublayer(path29_layer)

        let path30_path = UIBezierPath()

        path30_path.move(to: CGPoint(x: 49, y: 19))
        path30_path.addLine(to: CGPoint(x: 49, y: 89))
        let path30_layer = CAShapeLayer()
        path30_layer.frame = viewBounds
        path30_layer.path = path30_path.cgPath
        path30_layer.opacity = 1
        path30_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        path30_layer.lineWidth = 0.8
        path30_layer.strokeColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2).cgColor
        ic_launcher_background_vect1.addSublayer(path30_layer)

        let path31_path = UIBezierPath()

        path31_path.move(to: CGPoint(x: 59, y: 19))
        path31_path.addLine(to: CGPoint(x: 59, y: 89))
        let path31_layer = CAShapeLayer()
        path31_layer.frame = viewBounds
        path31_layer.path = path31_path.cgPath
        path31_layer.opacity = 1
        path31_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        path31_layer.lineWidth = 0.8
        path31_layer.strokeColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2).cgColor
        ic_launcher_background_vect1.addSublayer(path31_layer)

        let path32_path = UIBezierPath()

        path32_path.move(to: CGPoint(x: 69, y: 19))
        path32_path.addLine(to: CGPoint(x: 69, y: 89))
        let path32_layer = CAShapeLayer()
        path32_layer.frame = viewBounds
        path32_layer.path = path32_path.cgPath
        path32_layer.opacity = 1
        path32_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        path32_layer.lineWidth = 0.8
        path32_layer.strokeColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2).cgColor
        ic_launcher_background_vect1.addSublayer(path32_layer)

        let path33_path = UIBezierPath()

        path33_path.move(to: CGPoint(x: 79, y: 19))
        path33_path.addLine(to: CGPoint(x: 79, y: 89))
        let path33_layer = CAShapeLayer()
        path33_layer.frame = viewBounds
        path33_layer.path = path33_path.cgPath
        path33_layer.opacity = 1
        path33_layer.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        path33_layer.lineWidth = 0.8
        path33_layer.strokeColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2).cgColor
        ic_launcher_background_vect1.addSublayer(path33_layer)
  
        // ic_launcher_background_vect1.rasterizationScale = UIScreen.main.scale
        // ic_launcher_background_vect1.shouldRasterize = true    // ToDo : Check if this improves performance
        return ic_launcher_background_vect1
    }
 
// Swift code for vector image defined in 'ic_launcher_foreground.xml' File 
 

    class func ic_launcher_foreground(viewBounds: CGRect) -> CAShapeLayer{
        let ic_launcher_foreground_vect1 = CAShapeLayer()
        let vectorBounds = CGRect(x: 0, y: 0, width: 108, height: 108)
        ic_launcher_foreground_vect1.masksToBounds = true
        ic_launcher_foreground_vect1.fillColor = UIColor.clear.cgColor
        ic_launcher_foreground_vect1.bounds = vectorBounds
        ic_launcher_foreground_vect1.opacity = 1
        ic_launcher_foreground_vect1.setAffineTransform(CGAffineTransform(scaleX: viewBounds.width / 108, y: viewBounds.height / 108))
        ic_launcher_foreground_vect1.frame = viewBounds

        let path1_path = UIBezierPath()

        path1_path.move(to: CGPoint(x: 32, y: 64))
        path1_path.addCurve(to: CGPoint(x: 44.13, y: 50.95), controlPoint1: CGPoint(x: 32, y: 64), controlPoint2: CGPoint(x: 38.39, y: 52.99))
        path1_path.addCurve(to: CGPoint(x: 70.14, y: 49.57), controlPoint1: CGPoint(x: 51.37, y: 48.37), controlPoint2: CGPoint(x: 70.14, y: 49.57))
        path1_path.addLine(to: CGPoint(x: 108.26, y: 87.69))
        path1_path.addLine(to: CGPoint(x: 108, y: 109.01))
        path1_path.addLine(to: CGPoint(x: 75.97, y: 107.97))
        path1_path.addLine(to: CGPoint(x: 32, y: 64))
        path1_path.close()

        let path1_layer = CAShapeLayer()
        path1_layer.frame = viewBounds
        path1_layer.opacity = 1
        path1_layer.fillRule = CAShapeLayerFillRule.evenOdd
        path1_layer.lineWidth = 1
        path1_layer.strokeColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        ic_launcher_foreground_vect1.addSublayer(path1_layer)

        let grad1 = CAGradientLayer()
        grad1.frame = vectorBounds
        grad1.startPoint = CGPoint(x: 0.451531, y: 0.565673)
        grad1.endPoint = CGPoint(x: 0.727671, y: 0.841814)
        grad1.colors = [ UIColor(red: 0, green: 0, blue: 0, alpha: 0.26667).cgColor , 
                         UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor , 
                       ]
        grad1.locations = [ 0.0, 1.0, ]
        let grad1_Mask = CAShapeLayer()        // Mask layer for gradient
        grad1_Mask.frame = viewBounds
        grad1_Mask.path = path1_path.cgPath
        grad1_Mask.opacity = 1
        grad1_Mask.fillColor = UIColor.black.cgColor
        grad1.mask = grad1_Mask
        path1_layer.addSublayer(grad1)        // Apply Mask layer to gradient

        let path2_path = UIBezierPath()

        path2_path.move(to: CGPoint(x: 66.94, y: 46.02))
        path2_path.addLine(to: CGPoint(x: 66.94, y: 46.02))
        path2_path.addCurve(to: CGPoint(x: 76, y: 64), controlPoint1: CGPoint(x: 72.44, y: 50.07), controlPoint2: CGPoint(x: 76, y: 56.61))
        path2_path.addLine(to: CGPoint(x: 32, y: 64))
        path2_path.addCurve(to: CGPoint(x: 40.98, y: 46.06), controlPoint1: CGPoint(x: 32, y: 56.61), controlPoint2: CGPoint(x: 35.56, y: 50.11))
        path2_path.addLine(to: CGPoint(x: 36.18, y: 41.19))
        path2_path.addCurve(to: CGPoint(x: 36.18, y: 38.56), controlPoint1: CGPoint(x: 35.45, y: 40.45), controlPoint2: CGPoint(x: 35.45, y: 39.3))
        path2_path.addCurve(to: CGPoint(x: 38.78, y: 38.56), controlPoint1: CGPoint(x: 36.91, y: 37.81), controlPoint2: CGPoint(x: 38.05, y: 37.81))
        path2_path.addLine(to: CGPoint(x: 44.25, y: 44.05))
        path2_path.addCurve(to: CGPoint(x: 54, y: 41.71), controlPoint1: CGPoint(x: 47.18, y: 42.57), controlPoint2: CGPoint(x: 50.48, y: 41.71))
        path2_path.addCurve(to: CGPoint(x: 63.68, y: 44.05), controlPoint1: CGPoint(x: 57.48, y: 41.71), controlPoint2: CGPoint(x: 60.78, y: 42.57))
        path2_path.addLine(to: CGPoint(x: 69.11, y: 38.56))
        path2_path.addCurve(to: CGPoint(x: 71.71, y: 38.56), controlPoint1: CGPoint(x: 69.84, y: 37.81), controlPoint2: CGPoint(x: 70.98, y: 37.81))
        path2_path.addCurve(to: CGPoint(x: 71.71, y: 41.19), controlPoint1: CGPoint(x: 72.44, y: 39.3), controlPoint2: CGPoint(x: 72.44, y: 40.45))
        path2_path.addLine(to: CGPoint(x: 66.94, y: 46.02))
        path2_path.close()

        path2_path.move(to: CGPoint(x: 62.94, y: 56.92))
        path2_path.addCurve(to: CGPoint(x: 65, y: 54.88), controlPoint1: CGPoint(x: 64.08, y: 56.92), controlPoint2: CGPoint(x: 65, y: 56.01))
        path2_path.addCurve(to: CGPoint(x: 62.94, y: 52.85), controlPoint1: CGPoint(x: 65, y: 53.76), controlPoint2: CGPoint(x: 64.08, y: 52.85))
        path2_path.addCurve(to: CGPoint(x: 60.88, y: 54.88), controlPoint1: CGPoint(x: 61.8, y: 52.85), controlPoint2: CGPoint(x: 60.88, y: 53.76))
        path2_path.addCurve(to: CGPoint(x: 62.94, y: 56.92), controlPoint1: CGPoint(x: 60.88, y: 56.01), controlPoint2: CGPoint(x: 61.8, y: 56.92))
        path2_path.close()

        path2_path.move(to: CGPoint(x: 45.06, y: 56.92))
        path2_path.addCurve(to: CGPoint(x: 47.13, y: 54.88), controlPoint1: CGPoint(x: 46.2, y: 56.92), controlPoint2: CGPoint(x: 47.13, y: 56.01))
        path2_path.addCurve(to: CGPoint(x: 45.06, y: 52.85), controlPoint1: CGPoint(x: 47.13, y: 53.76), controlPoint2: CGPoint(x: 46.2, y: 52.85))
        path2_path.addCurve(to: CGPoint(x: 43, y: 54.88), controlPoint1: CGPoint(x: 43.92, y: 52.85), controlPoint2: CGPoint(x: 43, y: 53.76))
        path2_path.addCurve(to: CGPoint(x: 45.06, y: 56.92), controlPoint1: CGPoint(x: 43, y: 56.01), controlPoint2: CGPoint(x: 43.92, y: 56.92))
        path2_path.close()

        let path2_layer = CAShapeLayer()
        path2_layer.frame = viewBounds
        path2_layer.path = path2_path.cgPath
        path2_layer.opacity = 1
        path2_layer.fillColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        path2_layer.fillRule = CAShapeLayerFillRule.nonZero
        path2_layer.lineWidth = 1
        path2_layer.strokeColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        ic_launcher_foreground_vect1.addSublayer(path2_layer)
  
        // ic_launcher_foreground_vect1.rasterizationScale = UIScreen.main.scale
        // ic_launcher_foreground_vect1.shouldRasterize = true    // ToDo : Check if this improves performance
        return ic_launcher_foreground_vect1
    }
}
