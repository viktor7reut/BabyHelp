//
//  NinthTenthMonthVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 5.09.23.
//

import UIKit

final class NinthTenthMonthVC: UIViewController {
    @IBOutlet weak var titleNinthTenthMonthLabel: UILabel!
    @IBOutlet weak var ninthTenthMonthTextView: UITextView!
    
    let textForNinthTenthMonth = """
Игровой контакт со взрослыми. Берет мелкие предметы двумя пальцами. В лепете разнообразные звуковые
сочетания. Отдельные слогоподражательные слова. Сохраняет равновесие сидя. При манипуляциях с
предметами встает, ухватившись за опору. Хорошо ходит у опоры, переступает при поддержке за обе
руки. Ползает, встает на колени. Стоит самостоятельно. Ходит при поддержке за ручку или опору
держась одной рукой.
"""
    
    override func viewDidLoad() {
        titleNinthTenthMonthLabel.text = "9-10 месяц жизни"
        titleNinthTenthMonthLabel.setupStyleLabel()
        
        ninthTenthMonthTextView.isEditable = false
        ninthTenthMonthTextView.isSelectable = false
        
        ninthTenthMonthTextView.text = textForNinthTenthMonth
        
        ninthTenthMonthTextView.setupTextViewFont()
    }
}
