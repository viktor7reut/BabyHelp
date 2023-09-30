//
//  AcetylCysteinVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 15.09.23.
//

import UIKit

final class AcetylCysteinVC: UIViewController {
    @IBOutlet weak var titleAcetylCysteinlLabel: UILabel!
    @IBOutlet weak var acetylCysteinSlider: UISlider!
    @IBOutlet weak var acetylCysteinInfoLabel: UILabel!
    @IBOutlet weak var acetylCysteinRecommendationLabel: UILabel!
    @IBOutlet weak var acetylCysteinRecommendationDrugLabel: UILabel!
    
    var ageBaby: Int = 2 {
            didSet {
                acetylCysteinInfoLabel.text = "Возраст малыша \(ageBaby) лет"
            }
        }
    
    override func viewDidLoad() {
        
        titleAcetylCysteinlLabel.setupStyleLabel()
        
        acetylCysteinSlider.minimumValue = 2
        acetylCysteinSlider.maximumValue = 18
        
        acetylCysteinSlider.value = 2
        
        acetylCysteinSlider.addTarget(self, action: #selector(acetylCysteinSliderValueChanged(_:)), for: .valueChanged)
    }
    
    @objc func acetylCysteinSliderValueChanged(_ sender: UISlider) {
        let value = sender.value
        
        ageBaby = Int(value)
        
        if ageBaby >= 2 && ageBaby <= 6 {
            acetylCysteinRecommendationLabel.text = "Необходимая доза - 200-300 мг"
            
            acetylCysteinRecommendationDrugLabel.text = """
    Cироп 20 мг в 1 мл - 3.33 - 5 мл 3 раза в день.
    Порошок 100 мг в 1 пак. - 1 пак 2 раза в день.
    """
        }
        
        if ageBaby >= 7 && ageBaby <= 14 {
            acetylCysteinRecommendationLabel.text = "Необходимая доза - 300-400 мг"
            
            acetylCysteinRecommendationDrugLabel.text = """
    Cироп 20 мг в 1 мл - 5 - 6.66 мл 3 раза в день.
    Порошок 100 мг в 1 пак. - 1 пак 3 раза в день.
    Таблетки 100 мг в 1 таб - 1 таб 3 раза в день.
    """
        }
        
        if ageBaby >= 15 && ageBaby <= 18 {
            acetylCysteinRecommendationLabel.text = "Необходимая доза - 400-600 мг"
            
            acetylCysteinRecommendationDrugLabel.text = """
    Cироп 20 мг в 1 мл - 6.66 - 10 мл 3 раза в день.
    Порошок 100 мг в 1 пак. - 2 пак 3 раза в день.
    Таблетки 100 мг в 1 таб - 2 таб 3 раза в день.
    Таблетки 200 мг в 1 таб - 1 таб 2 раза в день.
    """
        }
    }
    
}
