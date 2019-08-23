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
|Vector or Shape xml | VectorStore.swift | In code - Use `imgView!.layer.addSublayer(VectorStore.ic_launcher_foreground(viewBounds: imgView!.bounds))`|
|Anim xml | RC_AnimationStore.swift | In code - Use `imgView?.layer.add( anim!, forKey: "bounse")`|


## Statement Estimation

|File Type | Estimate |
|-------------------------|-------------------------|
| png or .jpg | 5 stm for image + 10 stm for 'Contents.json' |
| 9.png | 5 stm for image + 20 for 'Contents.json' with slicing data |
| color.xml | 10 stm for each color value ".colorset" |
| MipMap images | 5 stm for each .jpg or .png |
| Shape xml | PDF file : stm = count of "android:" attribute in source xml + 10 stm for 'Contents.json' |
| Vector xml | PDF file : stm = count of "android:" attribute in source xml + 10 stm for 'Contents.json' <br> Swift code = LOC of Swift code generated for the file  |
| Anim xml | Swift code = LOC of Swift code generated for the file  |  

### Statement Estimation for few vector files from demo project
![Estimate](/Visuals/Vector_image_estimation.png?raw=true)

-----

## Assets conversion - Screen shots

Screen shot of Android and iOS devices showing usage of various assets - 
<img src="/Visuals/Asset-Screenshot-Portrait-1.png" alt="Screenshot" width="600"/>

-----

Android Studio layout editor
<img src="/Visuals/1-AndroidStudio-LayoutEditor.png" alt="XcodeEditor" width="600"/>

Xcode Storyboard editor
<img src="/Visuals/1-Xcode-Storyboard.png" alt="XcodeEditor" width="600"/>

-----

Android Studio image assets
<img src="/Visuals/2-AndroidStudio-ImageAssets.png" alt="AndroidEditor" width="600"/>

Xcode Asset Catalog showing mapping of 1x, 2x and 3x assets.
<img src="/Visuals/2-Xcode-AssetCatalog.png" alt="AssetCatalog" width="600"/>

-----

Android Studio .9.PNG image assets editor
<img src="/Visuals/3-AndroidStudio-9png_Editor.png" alt="Android9PNG" width="600"/>

Xcode AssetCatalog with slicing information extracted from .9.png file 
Estimation : 25 stm for each imageset in asset catalog
<img src="/Visuals/3-Xcode-AssetSlicing.png" alt="AssetSlicing" width="600"/>


## Vector conversion - Screen shots

Screen shot of Android and iOS devices showing usage of various vector xml 
<img src="/Visuals/Vector-Screenshot-Portrait-1.png" alt="Vector-Screenshot-Portrait-1" width="600"/>

Showing `CAShapeLayer` returned by `func heart_vector()` generated from `heart_vector.xml` android vector file 
<img src="/Visuals/Vector-Screenshot-Portrait-2.png" alt="Vector-Screenshot-Portrait-2" width="600"/>

UI with FingerPrint vector xml from [material.io](https://material.io/resources/icons/?icon=fingerprint&style=baseline)
<img src="/Visuals/Vector-Screenshot-Portrait-3.png" alt="Vector-Screenshot-Portrait-3" width="600"/>

Shape xml file comparison
<img src="/Visuals/Vector-Screenshot-Portrait-4.png" alt="Vector-Screenshot-Portrait-4" width="600"/>

## Animation conversion - Screen shots
Screen shot of Android and iOS devices for animation demo project 
<img src="/Visuals/Anim-Screenshot-Portrait-1.png" alt="Anim-Screenshot-Portrait-1" width="600"/>

| Android Screen Rec | iOS  Screen Rec | 
|-------------------------|-------------------------|
| <img src="/Visuals/Anim_ScreenRec_Android.gif" alt="Anim-ScreenRec-Android" width="350"/> | <img src="/Visuals/Anim_ScreenRec_iOS.gif" alt="Anim-ScreenRec-iOS" width="350"/> |

**Note :** the GIF files are not in sync, but animation in actual app are in sync and takes same duration

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
