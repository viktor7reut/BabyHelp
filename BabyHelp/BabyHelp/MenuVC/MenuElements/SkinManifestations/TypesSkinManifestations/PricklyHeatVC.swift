//
//  PricklyHeatVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 9.09.23.
//

import UIKit

final class PricklyHeatVC: UIViewController {
    @IBOutlet weak var titlePricklyHeatLabel: UILabel!
    @IBOutlet weak var pricklyHeatTextView: UITextView!
    
    let textForPricklyHeat = """
    Потница – это воспалительное заболевание, которое возникает в результате закупорки протоков потовых желез. Таким способом организм реагирует на нарушение процессов выделения и испарения пота.
    Чрезмерная секреция возникает при повышенных температурах. Когда ребенку жарко, железы работают слишком интенсивно и выделяют лишний секрет. Если при этом влаге некуда испаряться, соли начинают агрессивно влиять на кожу и вызывают раздражение. Чем дольше длится такой процесс, тем сильнее проявляется сыпь, покраснение.
    Методы профилактики - воздушные ванны, прохладные водные ванны.
"""
    
    override func viewDidLoad() {
        titlePricklyHeatLabel.text = "Потница"
        titlePricklyHeatLabel.setupStyleLabel()
        
        pricklyHeatTextView.isEditable = false
        pricklyHeatTextView.isSelectable = false
        
        pricklyHeatTextView.text = textForPricklyHeat
        
        pricklyHeatTextView.setupTextViewFont()
    }
}
