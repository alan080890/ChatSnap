//
//  RoundTextField.swift
//  ChatSnap
//
//  Created by Alan Ramos on 5/6/18.
//  Copyright © 2018 Alan Ramos. All rights reserved.
//

import UIKit

@IBDesignable
class RoundTextField: UITextField {
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.cgColor
        }
    }
    
    @IBInspectable var bgColor: UIColor? {
        didSet {
            backgroundColor = bgColor
        }
    }
    
    @IBInspectable var placeholderColor: UIColor? {
        didSet {
            
            let rawString = attributedPlaceholder?.string != nil ? attributedPlaceholder!.string : ""
//            let str = AttributedString(string: rawString, attributes: [NSForegroundColorAttributeName: placeholderColor])
            let str = NSAttributedString(string: rawString, attributes: [NSAttributedStringKey.foregroundColor: placeholderColor!])
            attributedPlaceholder = str
        }
    }
}
