//
//  DesignableTextField.swift
//  OnlyDesignable-Sample
//
//  Created by LeeSunhyoup on 2016. 5. 1..
//  Copyright © 2016년 Lee Sun-Hyoup. All rights reserved.
//

import UIKit

@IBDesignable
public class DesignableTextField: UITextField {
    @IBInspectable public var placeholderColor: UIColor = UIColor.clearColor() {
        didSet {
            guard let placeholder = placeholder else { return }
            attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSForegroundColorAttributeName: placeholderColor])
            layoutSubviews()
        }
    }
    
    @IBInspectable public var leftPadding: CGFloat = 0 {
        didSet {
            let padding = UIView(frame: CGRectMake(0, 0, leftPadding, 0))
            
            leftViewMode = UITextFieldViewMode.Always
            leftView = padding
        }
    }
    
    @IBInspectable public var rightPadding: CGFloat = 0 {
        didSet {
            let padding = UIView(frame: CGRectMake(0, 0, rightPadding, 0))
            
            rightViewMode = UITextFieldViewMode.Always
            rightView = padding
        }
    }
    
    @IBInspectable public var borderColor: UIColor = UIColor.clearColor() {
        didSet {
            layer.borderColor = borderColor.CGColor
        }
    }
    
    @IBInspectable public var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable public var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
}
