//
//  DesignableView.swift
//  OnlyDesignable-Sample
//
//  Created by LeeSunhyoup on 2016. 5. 1..
//  Copyright © 2016년 Lee Sun-Hyoup. All rights reserved.
//

import UIKit

@IBDesignable
public class DesignableView: UIView {
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
    
    @IBInspectable public var shadowColor: UIColor = UIColor.clearColor() {
        didSet {
            layer.shadowColor = shadowColor.CGColor
        }
    }
    
    @IBInspectable public var shadowRadius: CGFloat = 0 {
        didSet {
            layer.shadowRadius = shadowRadius
        }
    }
    
    @IBInspectable public var shadowOpacity: CGFloat = 0 {
        didSet {
            layer.shadowOpacity = Float(shadowOpacity)
        }
    }
    
    @IBInspectable public var shadowOffsetY: CGFloat = 0 {
        didSet {
            layer.shadowOffset.height = shadowOffsetY
        }
    }
    
    @IBInspectable public var shadowOffsetX: CGFloat = 0 {
        didSet {
            layer.shadowOffset.width = shadowOffsetX
        }
    }
}
