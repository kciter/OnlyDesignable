//
//  DesignableTextView.swift
//  OnlyDesignable-Sample
//
//  Created by LeeSunhyoup on 2016. 5. 1..
//  Copyright © 2016년 Lee Sun-Hyoup. All rights reserved.
//

import UIKit

@IBDesignable
public class DesignableTextView: UITextView {
    private var placeholderLabel: UILabel?
    
    @IBInspectable public var placeholder: String = "" {
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
            placeholderLabel.lineBreakMode = .ByClipping
            
            guard let font = font else { return }
            
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineSpacing = lineHeight
            
            let attributedString = NSMutableAttributedString(string: placeholder)
            attributedString.addAttribute(NSParagraphStyleAttributeName, value: paragraphStyle, range: NSMakeRange(0, attributedString.length))
            attributedString.addAttribute(NSFontAttributeName, value: font, range: NSMakeRange(0, attributedString.length))
            
            placeholderLabel.attributedText = attributedString
            
            placeholderLabel.sizeToFit()
            placeholderLabel.frame = CGRectMake(textContainer.lineFragmentPadding+textContainerInset.left,
                                                textContainerInset.top,
                                                bounds.size.width-textContainer.lineFragmentPadding-textContainerInset.right,
                                                placeholderLabel.frame.size.height)
            placeholderLabel.frame.size.width -= placeholderLabel.frame.origin.x
            
            placeholderLabel.removeFromSuperview()
            addSubview(placeholderLabel)
            
            layoutSubviews()
        }
    }
    
    @IBInspectable public var placeholderColor: UIColor = UIColor.lightGrayColor() {
        didSet {
            placeholderLabel?.textColor = placeholderColor
            layoutSubviews()
        }
    }
    
    @IBInspectable public var borderColor: UIColor = UIColor.lightGrayColor() {
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
    
    @IBInspectable public var lineHeight: CGFloat = 1.5 {
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
