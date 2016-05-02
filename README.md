# OnlyDesignable
![Swift 2.2](https://img.shields.io/badge/Swift-2.2-orange.svg)
[![Version](https://img.shields.io/cocoapods/v/OnlyDesignable.svg?style=flat)](http://cocoapods.org/pods/onlydesignable)
[![License](https://img.shields.io/cocoapods/l/OnlyDesignable.svg?style=flat)](http://cocoapods.org/pods/onlydesignable)
[![Platform](https://img.shields.io/cocoapods/p/OnlyDesignable.svg?style=flat)](http://cocoapods.org/pods/onlydesignable)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Build Status](https://travis-ci.org/kciter/OnlyDesignable.svg?branch=master)](https://travis-ci.org/kciter/OnlyDesignable)

Only **collection of designable view** for storyboard.<br>
It is able to `UIView`, `UILabel`, `UIButton`, `UITextField`, `UITextView`, `UIImageView` designable.

## Preview
<img src="https://github.com/kciter/OnlyDesignable/raw/master/Images/preview.png?raw=true" width='300' alt="preview">

## Requirements
* iOS 7.0+
* Swift 2.2
* Xcode 7

## Installation
* **CocoaPods**
  ```ruby
  use_frameworks!
  pod "OnlyDesignable"
  ```

* **Carthage**
  ```ruby
  github "kciter/OnlyDesignable"
  ```

* **Swift Package Manager**
  ```swift
  import PackageDescription

  let package = Package(
    name: "App",
    dependencies: [
      .Package(url: "https://github.com/kciter/OnlyDesignable.git", majorVersion: 1)
    ]
  )
  ```

* **Manually**
  * To install manually the `OnlyDesignable` in an app, just drag the `Sources/*.swift` file into your project.

## Usage
1. Install `OnlyDesignable` to your project.
2. Open your storyboard and show the `Identity` inspector.
3. Put `Designable{View, Label, ...}` in Class text field.
4. Put `OnlyDesignable` in Module text field.
5. Show the `Attributes` inspector.
6. You can change designable properties now!

## Support properties

### DesignableView
* `borderColor`:
  * Type: UIColor
  * Default: UIColor.clearColor()
* `borderWidth`:
  * Type: CGFloat
  * Default: 0
* `cornerRadius`:
  * Type: CGFloat
  * Default: 0
* `shadowColor`:
  * Type: UIColor
  * Default: UIColor.clearColor()
* `shadowRadius`:
  * Type: CGFloat
  * Default: 0
* `shadowOpacity`:
  * Type: CGFloat
  * Default: 0
* `shadowOffsetX`:
  * Type: CGFloat
  * Default: 0
* `shadowOffsetY`:
  * Type: CGFloat
  * Default: 0

### DesignableLabel
* `borderColor`:
  * Type: UIColor
  * Default: UIColor.clearColor()
* `borderWidth`:
  * Type: CGFloat
  * Default: 0
* `cornerRadius`:
  * Type: CGFloat
  * Default: 0
* `strikeThrough`:
  * Type: Bool
  * Default: false
* `strikeThroughColor`:
  * Type: UIColor
  * Default: UIColor.blackColor()
* `strikeThroughThickness`:
  * Type: CGFloat
  * Default: 1
* `strikeThroughOffsetY`:
  * Type: CGFloat
  * Default: 0
* `lineHeight`:
  * Type: CGFloat
  * Default: 1.5

### DesignableButton
* `borderColor`:
  * Type: UIColor
  * Default: UIColor.clearColor()
* `borderWidth`:
  * Type: CGFloat
  * Default: 0
* `cornerRadius`:
  * Type: CGFloat
  * Default: 0
* `shadowColor`:
  * Type: UIColor
  * Default: UIColor.clearColor()
* `shadowRadius`:
  * Type: CGFloat
  * Default: 0
* `shadowOpacity`:
  * Type: CGFloat
  * Default: 0
* `shadowOffsetX`:
  * Type: CGFloat
  * Default: 0
* `shadowOffsetY`:
  * Type: CGFloat
  * Default: 0

### DesignableTextField
* `placeholderColor`:
  * Type: UIColor
  * Default: UIColor.lightGrayColor()
* `leftPadding`:
  * Type: CGFloat
  * Default: 0
* `rightPadding`:
  * Type: CGFloat
  * Default: 0
* `borderColor`:
  * Type: UIColor
  * Default: UIColor.clearColor()
* `borderWidth`:
  * Type: CGFloat
  * Default: 0
* `cornerRadius`:
  * Type: CGFloat
  * Default: 0

### DesignableTextView
* `placeholder`:
  * Type: String
  * Default: ""
* `placeholderColor`:
  * Type: UIColor
  * Default: UIColor.lightGrayColor()
* `borderColor`:
  * Type: UIColor
  * Default: UIColor.clearColor()
* `borderWidth`:
  * Type: CGFloat
  * Default: 0
* `cornerRadius`:
  * Type: CGFloat
  * Default: 0
* `lineHeight`:
  * Type: CGFloat
  * Default: 1.5

### DesignableImageView
* `borderColor`:
  * Type: UIColor
  * Default: UIColor.clearColor()
* `borderWidth`:
  * Type: CGFloat
  * Default: 0
* `cornerRadius`:
  * Type: CGFloat
  * Default: 0
* `shadowColor`:
  * Type: UIColor
  * Default: UIColor.clearColor()
* `shadowRadius`:
  * Type: CGFloat
  * Default: 0
* `shadowOpacity`:
  * Type: CGFloat
  * Default: 0
* `shadowOffsetX`:
  * Type: CGFloat
  * Default: 0
* `shadowOffsetY`:
  * Type: CGFloat
  * Default: 0

## License
The MIT License (MIT)

Copyright (c) 2016 Lee Sun-Hyoup

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
