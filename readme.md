<h1 align="center">
  <a href="http://www.reflectcode.com">
    ReflectCode
  </a>
</h1>
<p align="center">
  <strong>Automated Source Code Transformation service</strong><br>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Platform-Android%20%7C%20iOS-green" alt="Platform - Android | iOS" />
 
  <a href="https://twitter.com/intent/follow?screen_name=reflectcode">
    <img src="https://img.shields.io/twitter/follow/reflectcode.svg?label=Follow%20@reflectcode" alt="Follow @reflectcode" />
  </a>
  
</p>


-----
# ReflectCode Assets demo

This repository contains the Android and iOS source code for projets used to demonstrate the Assets Transformation service from **RefelectCode**.

Using this service the assets files in `\Android\res` are converted into asset catalog files for Xcode in `\AssetDemo\Assets.xcassets` folder.

* Image assets from mdpi, hdpi, xhdpi and xxhdpi are mapped to 1x, 2x and 3x images
* For .9.png files, slicing information is added for asset in catalog
* Vector image xml are converted into `.pdf` files for use in Storyboard 
* Vector image xml are also transformed into Swift code and for each vector file a static method is added in `VectorStore.swift`

## Files transformed
This sample project demonstrates conversion of following files - 
* .png
* .9.png
* color.xml
* MipMap images
* Vector xml
* Shape xml
* Anim xml


## Dev Notes
|File Type | Location | Usage |
|-------------------------|-------------------------|-------------------------|
|.png, .9.png, color and MipMap | Asset Catalog | In storyboard - Directly accessed in attribute inspector pane <br> In code - Use `UIImage(named: "MyImage")`|
|Vector / Shape xml | Asset Catalog | In storyboard - Directly accessed in attribute inspector pane <br> In code - Use `UIImage(named: "MyImage")`|
|Vector or Shape xml | Swift code | In code - Use `imgView!.layer.addSublayer(VectorStore.ic_launcher_foreground(viewBounds: imgView!.bounds))`|



## Statement Estimation

|File Type | Estimate |
|-------------------------|-------------------------|
| png or .jpg | 5 stm for image + 10 stm for 'Contents.json' |
| 9.png | 5 stm for image + 20 for 'Contents.json' with slicing data |
| color.xml | 10 stm for each color value ".colorset" |
| MipMap images | 5 stm for each .jpg or .png |
| Shape xml | PDF file : stm = count of "android:" attribute in source xml + 10 stm for 'Contents.json' |
| Vector xml | PDF file : stm = count of "android:" attribute in source xml + 10 stm for 'Contents.json' <br> Swift code = LOC of Swift code generated for the file  |
  

### Statement Estimation for few vector files from demo project
![Estimate](/Visuals/Vector_image_estimation.png?raw=true)

-----

## Assets conversion - Screen shots

Screen shot of Android and iOS devices showing usage of various assets - 
![Screenshot](/Visuals/Asset-Screenshot-Portrait-1.png?raw=true)

-----

Android Studio layout editor
![AndroidEditor](/Visuals/1-AndroidStudio-LayoutEditor.png?raw=true)

Xcode Storyboard editor
![XcodeEditor](/Visuals/1-Xcode-Storyboard.png?raw=true)

-----

Android Studio image assets
![AndroidEditor](/Visuals/2-AndroidStudio-ImageAssets.png?raw=true)

Xcode Asset Catalog showing mapping of 1x, 2x and 3x assets.
![AssetCatalog](/Visuals/2-Xcode-AssetCatalog.png?raw=true)

-----

Android Studio .9.PNG image assets editor
![Android9PNG](/Visuals/3-AndroidStudio-9png_Editor.png?raw=true)

Xcode AssetCatalog with slicing information extracted from .9.png file 
Estimation : 25 stm for each imageset in asset catalog
![AssetSlicing](/Visuals/3-Xcode-AssetSlicing.png?raw=true)


## Vector conversion - Screen shots

Screen shot of Android and iOS devices showing usage of various vector xml 
![Vector-Screenshot-Portrait-1](/Visuals/Vector-Screenshot-Portrait-1.png?raw=true)

Showing `CAShapeLayer` returned by `func heart_vector()` generated from `heart_vector.xml` android vector file 
![Vector-Screenshot-Portrait-2](/Visuals/Vector-Screenshot-Portrait-2.png?raw=true)

UI with FingerPrint vector xml from [material.io](https://material.io/resources/icons/?icon=fingerprint&style=baseline)
![Vector-Screenshot-Portrait-3](/Visuals/Vector-Screenshot-Portrait-3.png?raw=true)

Shape xml file comparison
![Vector-Screenshot-Portrait-4](/Visuals/Vector-Screenshot-Portrait-4.png?raw=true)

## Animation conversion - Screen shots
Screen shot of Android and iOS devices for animation demo project 
![Anim-Screenshot-Portrait-1](/Visuals/Anim-Screenshot-Portrait-1.png?raw=true)

Screen recording of Android animation demo project 
![Anim-ScreenRec-Android](/Visuals/Anim_ScreenRec_Android.gif?raw=true)

Screen recording of iOS animation demo project 
![Anim-ScreenRec-iOS](/Visuals/Anim_ScreenRec_iOS.gif?raw=true)

-----

### File locations
1) `Anim_Android` contains the Android demo project for Animation
2) `Anim_iOS` contains the iOS demo project for Animation
3) `Asset_Android` contains the Android source demo project
4) `Asset_iOS` contains the ported Xcode project
5) `Vector_Android` contains Android demo project for vector xml
6) `Vector_iOS` contains Xcode demo project for vector files
7) `Visuals` contains images


## License

This project is made available under the MIT license. See the LICENSE file for more details.
