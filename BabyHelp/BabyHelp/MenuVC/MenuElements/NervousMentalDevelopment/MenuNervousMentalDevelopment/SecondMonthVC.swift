//
//  SecondMonthVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 5.09.23.
//

import UIKit

final class SecondMonthVC: UIViewController {
    @IBOutlet weak var titleSecondMonthLabel: UILabel!
    @IBOutlet weak var secondMonthTextView: UITextView!
    
    let textForSecondMonth = """
Улыбка при общении со взрослыми. Длительно удерживает предмет в поле зрения. Ищет источник звука
поворотом головы. Крик интонационно выразительный. Начальное гуление. Лежа на животе длительно
удерживает голову, в вертикальном положении — непостоянно. Удерживает вложенную игрушку в руке.
"""
    
    override func viewDidLoad() {
        titleSecondMonthLabel.text = "2 месяц жизни"
        titleSecondMonthLabel.setupStyleLabel()
        
        secondMonthTextView.isEditable = false
        secondMonthTextView.isSelectable = false
        
        secondMonthTextView.text = textForSecondMonth
        
        secondMonthTextView.setupTextViewFont()
    }
}
