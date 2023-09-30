//
//  UricAcidAttackVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 3.09.23.
//

import UIKit

final class UricAcidAttackVC: UIViewController {
    @IBOutlet weak var titleUricAcidAttackLabel: UILabel!
    @IBOutlet weak var uricAcidAttackTextView: UITextView!
    
    let textForUricAcidAttack = """
    Мочекислый инфаркт - одно из пограничных состояний у новорожденных, и наблюдается у большей половины деток (50-95%) в первую неделю жизни. Из-за высокой концентрации солей мочевой кислоты, моча становится более мутной, с красновато-кирпичным оттенком.
    Данное явление является методом приспособдения к существованию во внутриутробной среде. 


"""
    
    override func viewDidLoad() {
        titleUricAcidAttackLabel.text = "Мочекислый инфаркт"
        titleUricAcidAttackLabel.setupStyleLabel()
        
        uricAcidAttackTextView.isEditable = false
        uricAcidAttackTextView.isSelectable = false
        
        uricAcidAttackTextView.text = textForUricAcidAttack
        
        uricAcidAttackTextView.setupTextViewFont()
    }
}
