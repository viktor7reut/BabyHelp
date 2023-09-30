//
//  DiaperDermatitisVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 9.09.23.
//

import UIKit

final class DiaperDermatitisVC: UIViewController {
    @IBOutlet weak var titleDiaperDermatitisLabel: UILabel!
    @IBOutlet weak var diaperDermatitisTextView: UITextView!
    
    let textDiaperDermatitis = """
    Пеленочный дерматит у грудничка проявляется в виде высыпаний в области промежности, включая ягодицы, зону вокруг заднего прохода, гениталии, а также внутреннюю поверхность бедер и талию, то есть в тех участках, которые прикрыты подгузником, обусловлено данное состояние воздействием физических, химических, ферментативных и микробных факторов.
    Методы профилактики - частая смена подгузников, обмывание кожи, воздушные ванны.
    
"""
    
    override func viewDidLoad() {
        titleDiaperDermatitisLabel.text = "Пеленочный дерматит"
        titleDiaperDermatitisLabel.setupStyleLabel()
        
        diaperDermatitisTextView.isEditable = false
        diaperDermatitisTextView.isSelectable = false
        
        diaperDermatitisTextView.text = textDiaperDermatitis
        
        diaperDermatitisTextView.setupTextViewFont()
    }
    
}
