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
* Vector image xml are converted into `.pdf` files for use in Storyboard. 
* Vector image xml are also transformed into Swift code and for each vector file a static method is added in `VectorStore.swift`

## Files transformed
This sample project demonstrates conversion of following files - 
* .png
* .9.png
* color.xml
* MipMap images
* <Vector> xml
* <shape> xml


## Assets conversion - Screen shots

Screen shot of Android and iOS devices - 
![Screenshot](/Visuals/Asset-Screenshot-Portrait-1.png?raw=true)

-----

Android Studio layout editor
![AndroidEditor](/Visuals/1-AndroidStudio-LayoutEditor.png?raw=true)

Xcode Storyboard editor
![XcodeEditor](/Visuals/1-Xcode-Storyboard.png?raw=true)

-----

Android Studio image assets
![AndroidEditor](/Visuals/2-AndroidStudio-ImageAssets.png?raw=true)

Xcode Asset Catalog
![AssetCatalog](/Visuals/2-Xcode-AssetCatalog.png?raw=true)

-----

Android Studio 9-PNG image assets
![Android9PNG](/Visuals/3-AndroidStudio-9png_Editor.png?raw=true)

Xcode Asset Catalog Slicing
![AssetSlicing](/Visuals/3-Xcode-AssetSlicing.png?raw=true)


## Vector conversion - Screen shots

Screen shot of Android and iOS devices - 
![Screenshot](/Visuals/Vector-Screenshot-Portrait-1?raw=true)

![Screenshot](/Visuals/Vector-Screenshot-Portrait-2.png?raw=true)

FingerPrint vector xml from [material.io](https://material.io/resources/icons/?icon=fingerprint&style=baseline)
![Screenshot](/Visuals/Vector-Screenshot-Portrait-3.png?raw=true)

<shape> xml file comparison
![Screenshot](/Visuals/Vector-Screenshot-Portrait-4.png?raw=true)

-----


### File locations
1) `Asset_Android` folder contains the Android source demo project
2) `Asset_iOS` folder contains the ported Xcode project
3) `Vector_Android` contains Android demo project for vector xml
4) `Vector_iOS` contains Xcode demo project for vector files
3) `Visuals` contains images


## License

This project is made available under the MIT license. See the LICENSE file for more details.
