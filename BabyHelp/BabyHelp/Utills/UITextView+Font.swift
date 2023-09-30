//
//  UITextView+Font.swift
//  BabyHelp
//
//  Created by Виктор Реут on 3.09.23.
//

import UIKit

extension UITextView {
    
    func setupTextViewFont() {
        self.textColor = .black
        self.font = .systemFont(ofSize: 14.0, weight: .regular)
        self.textAlignment = .left
    }
}
