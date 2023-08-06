//
//  RoundedCornerView.swift
//  MoneyConversion
//
//  Created by Ezequiel Biglia on 06/08/2023.
//

import Foundation

import UIKit

@IBDesignable
class RoundedCornerView: UIView
{
    @IBInspectable var cornerRadius: CGFloat = 0
    {
        didSet
        {
                layer.cornerRadius = cornerRadius
                layer.masksToBounds = cornerRadius > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0
    {
        didSet
        {
            layer.borderWidth = borderWidth
        }
    }
}
