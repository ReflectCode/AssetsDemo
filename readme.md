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
Through this service the assets files in `\Android\res` are converted into asset catalog files for Xcode in `\AssetDemo\Assets.xcassets` folder.


## Files transformed
This sample project demonstrates conversion of following files - 
* .png
* .9.png
* color.xml
* MipMap images


## Screen shots

Screen shot of Android and iOS devices - 
![Screenshot](/Visuals/Screenshot-Portrait-1.png?raw=true)

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


### File locations
1) `Asset_Android` folder contains the Android source demo project
2) `Asset_Xcode` folder contains the ported Xcode project
3) `Visuals` contains images


## Statistics
* Statements ported : 433
* Duration          : 1 minutes


## License

This project is made available under the MIT license. See the LICENSE file for more details.
