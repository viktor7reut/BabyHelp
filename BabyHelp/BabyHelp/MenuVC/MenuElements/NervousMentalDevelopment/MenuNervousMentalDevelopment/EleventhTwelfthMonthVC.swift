//
//  EleventhTwelfthMonthVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 5.09.23.
//

import UIKit

final class EleventhTwelfthMonthVC: UIViewController {
    @IBOutlet weak var titleEleventhTwelfthMonthLabel: UILabel!
    @IBOutlet weak var eleventhTwelfthMonthTextView: UITextView!
    
    let textForEleventhTwelfthMonth = """
Выполняет некоторые просьбы. Говорит лепетные слова «ма-ма», «да-да»,«тя-тя». Складывает пирамидку
из колец с широкими отверстиями, любит играть с кубиками, мячиком. Подражательные движения -
перелистывание страниц, запуск машины. Показывает части своего тела. Уверенно стоит без опоры.
Приседает. Ходит, держась одной рукой. Делает несколько шагов без опоры. Ходит без поддержки.
"""
    
    override func viewDidLoad() {
        titleEleventhTwelfthMonthLabel.text = "9-10 месяц жизни"
        titleEleventhTwelfthMonthLabel.setupStyleLabel()
        
        eleventhTwelfthMonthTextView.isEditable = false
        eleventhTwelfthMonthTextView.isSelectable = false
        
        eleventhTwelfthMonthTextView.text = textForEleventhTwelfthMonth
        
        eleventhTwelfthMonthTextView.setupTextViewFont()
    }
}
