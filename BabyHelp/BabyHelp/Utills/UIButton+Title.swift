//
//  UIButton+Title.swift
//  BabyHelp
//
//  Created by Виктор Реут on 14.08.23.
//

import UIKit

extension UIButton {
    
    var font: UIFont? {
        get { self.titleLabel?.font }
        set { self.titleLabel?.font = newValue }
    }
        
        func setTitle(_ title: String) {
            setTitle(title, for: .normal)
            setTitle(title, for: .highlighted)
            setTitle(title, for: .disabled)
            setTitle(title, for: .selected)
        }
    }

