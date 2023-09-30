//
//  UIView+Layer.swift
//  BabyHelp
//
//  Created by Виктор Реут on 14.08.23.
//

import UIKit

extension UIView {
    //радиус
    
    var cornerRadius: CGFloat {
        get {
            return self.layer.cornerRadius
        }
        set {
            self.layer.cornerRadius = newValue
        }
    }
    //окантовка
    
    func setBorder(width: CGFloat, color: UIColor) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
    //базовая view
    
    func setupView() {
        self.layer.cornerRadius = 10
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.purple.cgColor
        self.tintColor = .purple
        self.backgroundColor = .white
    }
    
    func setBorderImage(width: CGFloat, corner: CGFloat, color: UIColor) {
        self.layer.borderWidth = width
        self.layer.cornerRadius = corner
        self.layer.borderColor = color.cgColor
    }
}
