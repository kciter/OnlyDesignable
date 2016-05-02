//
//  DesignableLabel.swift
//  OnlyDesignable-Sample
//
//  Created by LeeSunhyoup on 2016. 5. 1..
//  Copyright © 2016년 Lee Sun-Hyoup. All rights reserved.
//

import UIKit

@IBDesignable
public class DesignableLabel: UILabel {
    private var strikeThroughLayer: CALayer?
    
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
    
    @IBInspectable public var strikeThrough: Bool = false {
        didSet {
            if strikeThrough == true {
                if strikeThroughLayer == nil {
                    strikeThroughLayer = CALayer()
                }
                
                strikeThroughLayer?.backgroundColor = strikeThroughColor.CGColor
                
                guard let textSize = text?.sizeWithAttributes([NSFontAttributeName: font]) else {
                    strikeThroughLayer?.removeFromSuperlayer()
                    return
                }
                
                var x: CGFloat = 0.0
                if textAlignment == .Center {
                    x = bounds.size.width/2 - textSize.width/2
                } else if textAlignment == .Right {
                    x = bounds.size.width - textSize.width
                }
                
                strikeThroughLayer?.frame = CGRectMake(x,
                                                       bounds.size.height/2-strikeThroughThickness/2+strikeThroughOffsetY,
                                                       textSize.width,
                                                       strikeThroughThickness)
                
                strikeThroughLayer?.removeFromSuperlayer()
                layer.addSublayer(strikeThroughLayer!)
                
                layoutSubviews()
            } else {
                strikeThroughLayer?.removeFromSuperlayer()
            }
        }
    }
    
    @IBInspectable public var strikeThroughColor: UIColor = UIColor.blackColor() {
        didSet {
            if strikeThroughLayer != nil {
                strikeThroughLayer?.backgroundColor = strikeThroughColor.CGColor
                layoutSubviews()
            }
        }
    }
    
    @IBInspectable public var strikeThroughThickness: CGFloat = 1 {
        didSet {
            guard let textSize = text?.sizeWithAttributes([NSFontAttributeName: font]) else {
                strikeThroughLayer?.removeFromSuperlayer()
                return
            }
            
            var x: CGFloat = 0.0
            if textAlignment == .Center {
                x = bounds.size.width/2 - textSize.width/2
            } else if textAlignment == .Right {
                x = bounds.size.width - textSize.width
            }
            
            strikeThroughLayer?.frame = CGRectMake(x,
                                                   bounds.size.height/2-strikeThroughThickness/2+strikeThroughOffsetY,
                                                   textSize.width,
                                                   strikeThroughThickness)
            layoutSubviews()
        }
    }
    
    @IBInspectable public var strikeThroughOffsetY: CGFloat = 0 {
        didSet {
            guard let textSize = text?.sizeWithAttributes([NSFontAttributeName: font]) else {
                strikeThroughLayer?.removeFromSuperlayer()
                return
            }
            
            strikeThroughLayer?.frame = CGRectMake(0,
                                                   bounds.size.height/2-strikeThroughThickness/2+strikeThroughOffsetY,
                                                   textSize.width,
                                                   strikeThroughThickness)
            layoutSubviews()
        }
    }

    @IBInspectable public var lineHeight: CGFloat = 1.5 {
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
