//
//  FifthMonthVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 5.09.23.
//

import UIKit

final class FifthMonthVC: UIViewController {
    @IBOutlet weak var titleFifthMonthLabel: UILabel!
    @IBOutlet weak var fifthMonthTextView: UITextView!
    
    let textForFifthMonth = """
Четко дифференцирует "свой-чужой". Адекватная реакция на интонацию, на голос матери беспокоится или
оживляется. Певучее гуление с цепочками звуков, смех, хныканье. Переводит взгляд с предмета на
предмет. Тянется к игрушке и захватывает ее, перекладывает игрушки из рук в руку, тянет руку и
игрушку в рот. Лежа на животе опора на вытянутые руки, на одну руку. На спине - при тракции за руки
тянется за руками, присаживается. Уверенно поворачивается со  спины на живот. Ровно стоит при
поддержке. Верхний рефлекс Ландау (Ребенок в положении на животе поднимает голову, верхнюю часть
туловища и руки, опираясь на плоскость руками, удерживается в этой позе).
"""
    
    override func viewDidLoad() {
        titleFifthMonthLabel.text = "5 месяц жизни"
        titleFifthMonthLabel.setupStyleLabel()
        
        fifthMonthTextView.isEditable = false
        fifthMonthTextView.isSelectable = false
        
        fifthMonthTextView.text = textForFifthMonth
        
        fifthMonthTextView.setupTextViewFont()
    }
}
