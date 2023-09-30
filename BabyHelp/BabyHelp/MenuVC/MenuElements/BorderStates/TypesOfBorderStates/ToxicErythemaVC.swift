//
//  ToxicErythemaVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 3.09.23.
//

import UIKit

final class ToxicErythemaVC: UIViewController {
    @IBOutlet weak var titleToxicErythemaLabel: UILabel!
    @IBOutlet weak var toxicErythemaTextView: UITextView!
    
    let textForNewbornJaundice = """
    Токсическая эритема - временное состояние, которое чаще появляется в первые дни или недели после рождения, продолжительность вариабильно (от нескольких дней, до нескольких недель).
    Проявляется в виде красных пятен или высыпаний на теле. Слизистые, ладошки и подошвы остаются чистыми.
    Данное состояние вызывается необходимостью адапатации кожи в новых условиях жизни.
    Токсическая эритема не требует специфического лечения и обычно проходит самостоятельно.
    Есть ряд рекомендаций которых стоит придерживаться для облегчения дискомфорта:

    • Поддерживайте кожу ребенка чистой и сухой
    • Необходимо использовать мягкое детское мыло или специальные средства для ухода за кожей малыша
    • При ухудшении состояния, беспокойствах ребенка - необходимо обратиться к врачу педиатру.

"""
    
    override func viewDidLoad() {
        titleToxicErythemaLabel.text = "Токсическая эритема"
        titleToxicErythemaLabel.setupStyleLabel()
        
        toxicErythemaTextView.isEditable = false
        toxicErythemaTextView.isSelectable = false
        
        toxicErythemaTextView.text = textForNewbornJaundice
        
        toxicErythemaTextView.setupTextViewFont()
    }
}
