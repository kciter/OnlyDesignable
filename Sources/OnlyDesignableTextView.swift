//
//  DesignableTextView.swift
//  OnlyDesignable-Sample
//
//  Created by LeeSunhyoup on 2016. 5. 1..
//  Copyright © 2016년 Lee Sun-Hyoup. All rights reserved.
//

import UIKit

@IBDesignable
open class DesignableTextView: UITextView {
    fileprivate var placeholderLabel: UILabel?
    
    @IBInspectable open var placeholder: String = "" {
        didSet {
            guard placeholder == "" || text == "" else {
                placeholderLabel?.removeFromSuperview()
                return
            }
            
            if placeholderLabel == nil {
                placeholderLabel = UILabel()
                placeholderLabel?.numberOfLines = 0
            }
            
            guard let placeholderLabel = placeholderLabel else { return }
            
            placeholderLabel.textColor = placeholderColor
//            placeholderLabel.text = placeholder
            placeholderLabel.font = font
            placeholderLabel.textAlignment = textAlignment
            placeholderLabel.lineBreakMode = .byClipping
            
            guard let font = font else { return }
            
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineSpacing = lineHeight
            
            let attributedString = NSMutableAttributedString(string: placeholder)
            attributedString.addAttribute(NSParagraphStyleAttributeName, value: paragraphStyle, range: NSMakeRange(0, attributedString.length))
            attributedString.addAttribute(NSFontAttributeName, value: font, range: NSMakeRange(0, attributedString.length))
            
            placeholderLabel.attributedText = attributedString
            
            placeholderLabel.sizeToFit()
            placeholderLabel.frame = CGRect(x: textContainer.lineFragmentPadding+textContainerInset.left,
                                                y: textContainerInset.top,
                                                width: bounds.size.width-textContainer.lineFragmentPadding-textContainerInset.right,
                                                height: placeholderLabel.frame.size.height)
            placeholderLabel.frame.size.width -= placeholderLabel.frame.origin.x
            
            placeholderLabel.removeFromSuperview()
            addSubview(placeholderLabel)
            
            layoutSubviews()
        }
    }
    
    @IBInspectable open var placeholderColor: UIColor = UIColor.lightGray {
        didSet {
            placeholderLabel?.textColor = placeholderColor
            layoutSubviews()
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
    
    @IBInspectable open var lineHeight: CGFloat = 1.5 {
        didSet {
            guard let font = font else { return }
            
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineSpacing = lineHeight
            
            let attributedString = NSMutableAttributedString(string: text!)
            attributedString.addAttribute(NSParagraphStyleAttributeName, value: paragraphStyle, range: NSMakeRange(0, attributedString.length))
            attributedString.addAttribute(NSFontAttributeName, value: font, range: NSMakeRange(0, attributedString.length))
            
            attributedText = attributedString
            placeholderLabel?.attributedText = attributedText
        }
    }
}
