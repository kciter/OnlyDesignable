//
//  DesignableLabel.swift
//  OnlyDesignable-Sample
//
//  Created by LeeSunhyoup on 2016. 5. 1..
//  Copyright © 2016년 Lee Sun-Hyoup. All rights reserved.
//

import UIKit

@IBDesignable
open class DesignableLabel: UILabel {
    fileprivate var strikeThroughLayer: CALayer?
    
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
    
    @IBInspectable open var strikeThrough: Bool = false {
        didSet {
            if strikeThrough == true {
                if strikeThroughLayer == nil {
                    strikeThroughLayer = CALayer()
                }
                
                strikeThroughLayer?.backgroundColor = strikeThroughColor.cgColor
                
                guard let textSize = text?.size(attributes: [NSFontAttributeName: font]) else {
                    strikeThroughLayer?.removeFromSuperlayer()
                    return
                }
                
                var x: CGFloat = 0.0
                if textAlignment == .center {
                    x = bounds.size.width/2 - textSize.width/2
                } else if textAlignment == .right {
                    x = bounds.size.width - textSize.width
                }
                
                strikeThroughLayer?.frame = CGRect(x: x,
                                                       y: bounds.size.height/2-strikeThroughThickness/2+strikeThroughOffsetY,
                                                       width: textSize.width,
                                                       height: strikeThroughThickness)
                
                strikeThroughLayer?.removeFromSuperlayer()
                layer.addSublayer(strikeThroughLayer!)
                
                layoutSubviews()
            } else {
                strikeThroughLayer?.removeFromSuperlayer()
            }
        }
    }
    
    @IBInspectable open var strikeThroughColor: UIColor = UIColor.black {
        didSet {
            if strikeThroughLayer != nil {
                strikeThroughLayer?.backgroundColor = strikeThroughColor.cgColor
                layoutSubviews()
            }
        }
    }
    
    @IBInspectable open var strikeThroughThickness: CGFloat = 1 {
        didSet {
            guard let textSize = text?.size(attributes: [NSFontAttributeName: font]) else {
                strikeThroughLayer?.removeFromSuperlayer()
                return
            }
            
            var x: CGFloat = 0.0
            if textAlignment == .center {
                x = bounds.size.width/2 - textSize.width/2
            } else if textAlignment == .right {
                x = bounds.size.width - textSize.width
            }
            
            strikeThroughLayer?.frame = CGRect(x: x,
                                                   y: bounds.size.height/2-strikeThroughThickness/2+strikeThroughOffsetY,
                                                   width: textSize.width,
                                                   height: strikeThroughThickness)
            layoutSubviews()
        }
    }
    
    @IBInspectable open var strikeThroughOffsetY: CGFloat = 0 {
        didSet {
            guard let textSize = text?.size(attributes: [NSFontAttributeName: font]) else {
                strikeThroughLayer?.removeFromSuperlayer()
                return
            }
            
            strikeThroughLayer?.frame = CGRect(x: 0,
                                                   y: bounds.size.height/2-strikeThroughThickness/2+strikeThroughOffsetY,
                                                   width: textSize.width,
                                                   height: strikeThroughThickness)
            layoutSubviews()
        }
    }

    @IBInspectable open var lineHeight: CGFloat = 1.5 {
        didSet {
            guard let font = font else { return }
            
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineSpacing = lineHeight
            
            let attributedString = NSMutableAttributedString(string: text!)
            attributedString.addAttribute(NSParagraphStyleAttributeName, value: paragraphStyle, range: NSMakeRange(0, attributedString.length))
            attributedString.addAttribute(NSFontAttributeName, value: font, range: NSMakeRange(0, attributedString.length))
            
            self.attributedText = attributedString
        }
    }
}
