//
//  NewbornJaundiceVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 3.09.23.
//

import UIKit

final class NewbornJaundiceVC: UIViewController {
    @IBOutlet weak var titleNewbornJaundiceLabel: UILabel!
    @IBOutlet weak var newbornJaundiceTextView: UITextView!
    
    let textForNewbornJaundice = """
    Желтуха - это состояние, при котором в крови повышается уровень билирубина, который откладываясь в тканях, придает коже, слизистым и белкам глазных яблок оттенок от лимонного до апельсинового цвета.

    Выделяют:
    • Физиологическая желтуха - вариант нормы. Как правило проявляется на 3-4 день после рождения и длиться около 2-3 недель, затем интенсивность желтухи постепенно снижается. Лечение, в данном случае, не требуется. Если желтизна не проходит - необходима консультация врача педиатра.
    • Патологическая желтуха - развитие данного варианта желтухи может быть вызвано наличием хронических заболеваний матери, конфликт по группе крови, резус конфликт и т.д. Чаще проявляетя в 1 сутки после рождения малыша.

"""
    
    override func viewDidLoad() {
        titleNewbornJaundiceLabel.text = "Желтуха новорожденных"
        titleNewbornJaundiceLabel.setupStyleLabel()
        
        newbornJaundiceTextView.isEditable = false
        newbornJaundiceTextView.isSelectable = false
        
        newbornJaundiceTextView.text = textForNewbornJaundice
        
        newbornJaundiceTextView.setupTextViewFont()
    }
}
