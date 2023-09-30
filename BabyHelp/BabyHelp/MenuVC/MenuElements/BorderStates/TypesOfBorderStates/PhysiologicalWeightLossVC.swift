//
//  PhysiologicalWeightLossVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 3.09.23.
//

import UIKit

final class PhysiologicalWeightLossVC: UIViewController {
    @IBOutlet weak var titlePhysiologicalWeightLossLabel: UILabel!
    @IBOutlet weak var physiologicalWeightLossTextView: UITextView!
    
    let textForPhysiologicalWeightLoss = """
    Физиологическая потеря массы тела отмечается у всех новорожденных и не зависит от массы тела при рождении. Максимальная убыль первоначальной массы тела ребенка обычно приходится на 3-5 день. Измеряют ее в процентах по отношению к массе тела при рождении. В норме максимальная убыль массы тела не должна превышать 10%. У здоровых доношенных новорожденных она обычно не более 6%. Потери более 10%, у доношенного новорожденного, свидетельствуют о наличии каких-либо заболеваний или о нарушениях в выхаживании ребенка.

    Вес снижается потому, что сразу после рождения ребенок через кожу теряет часть воды, усыхает его пуповинный остаток, выделяются меконий (первый кал) и моча, а также потому, что младенец пока еще ест небольшое количество молока.

    Быстрому восстановлению веса ребенка способствуют:

     • раннее прикладывание к груди,
     • свободный режим вскармливания,
     • соблюдение теплового режима,
     • профилактика гипогалактии у мамы,
     • рациональный уход за малышом.
"""
    
    override func viewDidLoad() {
        titlePhysiologicalWeightLossLabel.text = "Физиологическая потеря массы тела"
        titlePhysiologicalWeightLossLabel.setupStyleLabel()
        
        physiologicalWeightLossTextView.isEditable = false
        physiologicalWeightLossTextView.isSelectable = false
        
        physiologicalWeightLossTextView.text = textForPhysiologicalWeightLoss
        
        physiologicalWeightLossTextView.setupTextViewFont()
    }
}
