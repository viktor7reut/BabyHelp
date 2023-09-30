//
//  SeventhEighthMonthVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 5.09.23.
//

import UIKit

final class SeventhEighthMonthVC: UIViewController {
    @IBOutlet weak var titleSeventhEighthMonthLabel: UILabel!
    @IBOutlet weak var seventhEighthMonthTextView: UITextView!
    
    let textForSeventhEighthMonth = """
Внимательно рассматривает взрослых,прежде чем вступить в контакт. Дифференцирует «своих» и «чужих».
Узнает голоса близких. Активный лепет. Захват игрушки сопровождается генерализованными активными
движениями. Перекладывает предмет из руки в руку, похлопывает рукой потигрушке. Находит взглядом
знакомый предмет по просьбе взрослого. Поворачивается с живота на  спину и обратно. Посаженный
ребенок сидит без опоры на руки. Стоит при поддержке. Становится на четвереньки. Ползает на животе
по-пластунски. Становится и ползает на четвереньках. Нижний рефлекс Ландау Нижний рефлекс Ландау (в
положении на животе ребенок разгибает и поднимает ноги).
"""
    
    override func viewDidLoad() {
        titleSeventhEighthMonthLabel.text = "7-8 месяц жизни"
        titleSeventhEighthMonthLabel.setupStyleLabel()
        
        seventhEighthMonthTextView.isEditable = false
        seventhEighthMonthTextView.isSelectable = false
        
        seventhEighthMonthTextView.text = textForSeventhEighthMonth
        
        seventhEighthMonthTextView.setupTextViewFont()
    }
}
