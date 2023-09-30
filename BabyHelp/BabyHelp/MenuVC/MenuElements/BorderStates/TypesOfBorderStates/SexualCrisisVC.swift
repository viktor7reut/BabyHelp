//
//  SexualCrisisVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 3.09.23.
//

import UIKit

final class SexualCrisisVC: UIViewController {
    @IBOutlet weak var titleSexualCrisisLabel: UILabel!
    @IBOutlet weak var sexualCrisisTextView: UITextView!
    
    let textForSexualCrisis = """
    Половой криз новорожденного - типичное пограничное состояние, которое характеризует адаптацию к жизни вне утроба матери.
    Основная причина которая приводит к появлению симптомов полового криза - резкое падение уровня женских половых гормонов(эстрогенов), сразу после рождения и в течении первой недели жизни.
    Уровень эстрогенов в организме ребенка падает в сотни раз, что способствует изменению гормонального фона и проявлению ответной реакции организма.
    Основным признаком полового криза является набухание или увеличение молочных желез(так же называемый физиологической мастопатией) В норме увеличение железы состовляет не более 3 см без признаков воспаления.
    В ряде случаев возможно выделение сероватого, бело-молочного цвета секрета. Для предупреждения инфицирования выдавливать данный секрет нельзя.

"""
    
    override func viewDidLoad() {
        titleSexualCrisisLabel.text = "Половой криз"
        titleSexualCrisisLabel.setupStyleLabel()
        
        sexualCrisisTextView.isEditable = false
        sexualCrisisTextView.isSelectable = false
        
        sexualCrisisTextView.text = textForSexualCrisis
        
        sexualCrisisTextView.setupTextViewFont()
    }
    
}
