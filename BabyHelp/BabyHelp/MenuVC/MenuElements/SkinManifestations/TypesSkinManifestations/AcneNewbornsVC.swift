//
//  AcneNewbornsVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 9.09.23.
//

import UIKit

final class AcneNewbornsVC: UIViewController {
    @IBOutlet weak var titleAcneNewbornsLabel: UILabel!
    @IBOutlet weak var acneNewbornsTextView: UITextView!
    
    let textForAcneNewborns = """
Состояние которое достаточно часто встречается среди детей грудного возраста. Высыпания достигают своего пика к 3 недели жизни и проходит самостоятельно. Основной уход заключается в очищении области высыпания водой. Главное помнить: не тереть полотенцем, не давить и не чесать. В редких случаях может
быть небходима медикаментозное лечение.
"""
    
    override func viewDidLoad() {
        titleAcneNewbornsLabel.text = "Акне новорожденных"
        titleAcneNewbornsLabel.setupStyleLabel()
        
        acneNewbornsTextView.isEditable = false
        acneNewbornsTextView.isSelectable = false
        
        acneNewbornsTextView.text = textForAcneNewborns
        
        acneNewbornsTextView.setupTextViewFont()
    }
}
