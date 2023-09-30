//
//  UIColor+Palette.swift
//  BabyHelp
//
//  Created by Виктор Реут on 14.08.23.
//

import UIKit

extension UIColor {
    
    convenience init(r: Int, g: Int, b: Int, a: CGFloat = 1.0) {
        self.init(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: a)
    }
    
    //основные цвета
    
    static var orchidColor: UIColor {
        return UIColor(r: 160, g: 75, b: 227)
    }
    
    static var moderateSlateBlueColor: UIColor {
        return UIColor(r: 124, g: 78, b: 237)
    }
    
    static var slateBlueColor: UIColor {
        return UIColor(r: 82, g: 80, b: 213)
    }
    
    static var indigoCraolaColor: UIColor {
        return UIColor(r: 78, g: 118, b: 237)
    }
    
    static var cornflowerColor: UIColor {
        return UIColor(r: 75, g: 152, b: 227)
    }
    
    static var titleColor: UIColor {
        return UIColor(r: 89, g: 88, b: 91)
    }
}

