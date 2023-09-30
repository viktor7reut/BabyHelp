//
//  FourthMonthVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 5.09.23.
//

import UIKit

final class FourthMonthVC: UIViewController {
    @IBOutlet weak var titleFourthMonthLabel: UILabel!
    @IBOutlet weak var fourthMonthTextView: UITextView!
    
    let textForFourthMonth = """
Начинает  различать лица и дифференцировать  «свой – чужой». Певучее гуление, смех. Целенаправленно
тянется к игрушке, захватывает ее всей ладонью. Рассматривает, ощупывает свои руки, одежду. Тянет
руки в рот. Локализует звук в пространстве. Различает голоса близких. Лежа на животе - опора на
согнутые под прямым углом предплечья. Лежа на спине - при тракции за руки сгибает руки в локтях,
приподнимает голову, подтягивается.Поворачивается со спины на бок или живот. Верхний рефлекс Ландау
(Ребенок в положении на животе поднимает голову, верхнюю часть туловища и руки, опираясь на
плоскость руками, удерживается в этой позе).
"""
    
    override func viewDidLoad() {
        titleFourthMonthLabel.text = "4 месяц жизни"
        titleFourthMonthLabel.setupStyleLabel()
        
        fourthMonthTextView.isEditable = false
        fourthMonthTextView.isSelectable = false
        
        fourthMonthTextView.text = textForFourthMonth
        
        fourthMonthTextView.setupTextViewFont()
    }
}
