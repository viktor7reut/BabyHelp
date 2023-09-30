//
//  AmbroxolVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 15.09.23.
//

import UIKit


final class AmbroxolVC: UIViewController {
    @IBOutlet weak var titleAmbroxolLabel: UILabel!
    @IBOutlet weak var ambroxolSlider: UISlider!
    @IBOutlet weak var ambroxolInfoLabel: UILabel!
    @IBOutlet weak var ambroxolRecommendationLabel: UILabel!
    @IBOutlet weak var ambroxolRecommendationDrugLabel: UILabel!
    
    var ageBaby: Int = 2 {
            didSet {
                ambroxolInfoLabel.text = "Возраст малыша \(ageBaby) лет"
            }
        }
    
    override func viewDidLoad() {
        
        titleAmbroxolLabel.setupStyleLabel()
        
        ambroxolSlider.minimumValue = 2
        ambroxolSlider.maximumValue = 12
        
        ambroxolSlider.value = 2
        
        ambroxolSlider.addTarget(self, action: #selector(ambroxolSliderValueChanged(_:)), for: .valueChanged)
    }
    
    @objc func ambroxolSliderValueChanged(_ sender: UISlider) {
        let value = sender.value
        
        ageBaby = Int(value)
        
        if ageBaby >= 2 && ageBaby <= 5 {
            ambroxolRecommendationLabel.text = "Необходимая доза - 7.5 мг"
            
            ambroxolRecommendationDrugLabel.text = """
    Cироп 15 мг в 5 мл - 2.5 мл 3 раза в день.
    Cироп 30 мг в 5 мл - 1.25 мл 3 раза в день.
    Раствор 7.5 мг в 1 мл - 1 мл 3 раза в день
    """
        }
        
        if ageBaby >= 6 && ageBaby <= 12 {
            ambroxolRecommendationLabel.text = "Необходимая доза - 15 мг"
            
            ambroxolRecommendationDrugLabel.text = """
    Cироп 15 мг в 5 мл - 5 мл 3 раза в день.
    Cироп 30 мг в 5 мл - 2.5 мл 3 раза в день.
    Раствор 7.5 мг в 1 мл - 2 мл 3 раза в день
    Таблетки 30 мг в 1 таб - 0.5 таб 3 раза в день
    """
        }
    }
}
