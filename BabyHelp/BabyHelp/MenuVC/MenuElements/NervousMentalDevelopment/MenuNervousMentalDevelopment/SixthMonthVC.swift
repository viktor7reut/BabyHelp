//
//  SixthMonthVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 5.09.23.
//

import UIKit

final class SixthMonthVC: UIViewController {
    @IBOutlet weak var titleSixthMonthLabel: UILabel!
    @IBOutlet weak var sixthMonthTextView: UITextView!
    
    let textForSixthMonth = """
Четкая ориентировочная реакция; при виде матери беспокоится или оживляется. Рассматривает окружающие
предметы и людей. Захватывает игрушку с любой стороны. Держит в каждой руке по предмету,
перекладывает игрушки из руки в руку. Поворачивается на звук, если внимание его не отвлечено
игрушкой, взрослым. Начинает реагировать на своё имя. Речь - ребенок подолгу может общаться сам с
собой. Начало лепета (отдельные слоги говорит «ба», «ма) Лежа на животе - опора на вытянутые руки,
на одну руку. Лежа на спине- при тракции  за руки садится. Посаженный удерживает позу с опорой на
две руки. Поворачивается со спины на живот и обратно. Верхний рефлекс Ландау (Ребенок в положении на
животе поднимает голову, верхнюю часть туловища и руки, опираясь на плоскость руками, удерживается в
этой позе).
"""
    
    override func viewDidLoad() {
        titleSixthMonthLabel.text = "6 месяц жизни"
        titleSixthMonthLabel.setupStyleLabel()
        
        sixthMonthTextView.isEditable = false
        sixthMonthTextView.isSelectable = false
        
        sixthMonthTextView.text = textForSixthMonth
        
        sixthMonthTextView.setupTextViewFont()
    }
}
