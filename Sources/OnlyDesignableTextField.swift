//
//  DesignableTextField.swift
//  OnlyDesignable-Sample
//
//  Created by LeeSunhyoup on 2016. 5. 1..
//  Copyright © 2016년 Lee Sun-Hyoup. All rights reserved.
//

import UIKit

@IBDesignable
open class DesignableTextField: UITextField {
  @IBInspectable open var placeholderColor: UIColor = UIColor.lightGray {
    didSet {
      guard let placeholder = placeholder else { return }
      attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedStringKey.foregroundColor: placeholderColor])
      layoutSubviews()
    }
  }
  
  @IBInspectable open var leftPadding: CGFloat = 0 {
    didSet {
      let padding = UIView(frame: CGRect(x: 0, y: 0, width: leftPadding, height: 0))
      
      leftViewMode = UITextFieldViewMode.always
      leftView = padding
    }
  }
  
  @IBInspectable open var rightPadding: CGFloat = 0 {
    didSet {
      let padding = UIView(frame: CGRect(x: 0, y: 0, width: rightPadding, height: 0))
      
      rightViewMode = UITextFieldViewMode.always
      rightView = padding
    }
  }
  
  @IBInspectable open var borderColor: UIColor = UIColor.clear {
    didSet {
      layer.borderColor = borderColor.cgColor
    }
  }
  
  @IBInspectable open var borderWidth: CGFloat = 0 {
    didSet {
      layer.borderWidth = borderWidth
    }
  }
  
  @IBInspectable open var cornerRadius: CGFloat = 0 {
    didSet {
      layer.cornerRadius = cornerRadius
    }
  }
}
