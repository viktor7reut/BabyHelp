//
//  SimethiconeVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 16.09.23.
//

import UIKit

final class SimethiconeVC: UIViewController {
    @IBOutlet weak var titleSimethiconeLabel: UILabel!
    @IBOutlet weak var simethiconeSlider: UISlider!
    @IBOutlet weak var simethiconeInfoLabel: UILabel!
    @IBOutlet weak var simethiconeRecommendationLabel: UILabel!
    @IBOutlet weak var simethiconeRecommendationDrugLabel: UILabel!
    
    var ageBaby: Int = 0 {
            didSet {
                simethiconeInfoLabel.text = "Возраст малыша \(ageBaby) лет"
            }
        }
    
    override func viewDidLoad() {
        
        titleSimethiconeLabel.setupStyleLabel()
        
        simethiconeSlider.minimumValue = 0
        simethiconeSlider.maximumValue = 18
        
        simethiconeSlider.value = 0
        
        simethiconeSlider.addTarget(self, action: #selector(simethiconeSliderValueChanged(_:)), for: .valueChanged)
    }
    
    @objc func simethiconeSliderValueChanged(_ sender: UISlider) {
        let value = sender.value
        
        ageBaby = Int(value)
        
        if ageBaby >= 0 && ageBaby <= 1 {
            simethiconeRecommendationLabel.text = "Необходимая доза - 40 мг"
            
            simethiconeRecommendationDrugLabel.text = """
    Капли 40 мг в 1 мл - 1 мл (25 капель) при каждом кормлении.
    """
        }
        
        if ageBaby >= 2 && ageBaby <= 6 {
            simethiconeRecommendationLabel.text = "Необходимая доза - 40 мг"
            
            simethiconeRecommendationDrugLabel.text = """
    Капли 40 мг в 1 мл - 1 мл (25 капель) 3-5 раз в день.
    """
        }
        
        if ageBaby >= 7 && ageBaby <= 14 {
            simethiconeRecommendationLabel.text = "Необходимая доза - 40 мг"
            
            simethiconeRecommendationDrugLabel.text = """
    Капли 40 мг в 1 мл - 1-2 мл (25-50 капель) 3-5 раз в день.
    """
        }
        
        if ageBaby >= 15 {
            simethiconeRecommendationLabel.text = "Необходимая доза - 40 мг"
            
            simethiconeRecommendationDrugLabel.text = """
    Капли 40 мг в 1 мл - 2 мл (50 капель) 3-5 раз в день.
    """
        }
    }
    
}
