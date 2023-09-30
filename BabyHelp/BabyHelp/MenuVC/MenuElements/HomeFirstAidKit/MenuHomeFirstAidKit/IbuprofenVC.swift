//
//  IbuprofenVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 14.09.23.
//

import UIKit

final class IbuprofenVC: UIViewController {
    @IBOutlet weak var titleIbuprofenLabel: UILabel!
    @IBOutlet weak var ibuprofenSlider: UISlider!
    @IBOutlet weak var ibuprofenInfoLabel: UILabel!
    @IBOutlet weak var ibuprofenRecommendationLabel: UILabel!
    @IBOutlet weak var ibuprofenRecommendationDrugLabel: UILabel!
    
    var weightBaby: Int = 2 {
            didSet {
                ibuprofenInfoLabel.text = "Вес малыша \(weightBaby) кг"
            }
        }
    
    override func viewDidLoad() {
        
        titleIbuprofenLabel.setupStyleLabel()
        
        ibuprofenSlider.minimumValue = 2
        ibuprofenSlider.maximumValue = 20
        
        ibuprofenSlider.value = 2
        
        ibuprofenSlider.addTarget(self, action: #selector(ibuprofenSliderValueChanged(_:)), for: .valueChanged)
    }
    
    @objc func ibuprofenSliderValueChanged(_ sender: UISlider) {
        let value = sender.value
        
        weightBaby = Int(value)
        
        ibuprofenRecommendationLabel.text = "Необходимая доза - \(weightBaby * 10) мг"
        
        ibuprofenRecommendationDrugLabel.text = """
Cироп 100 мг в 5 мл - \((weightBaby * 10) / (100 / 5)) мл до 4 раз в день.
Cироп 200 мг в 5 мл - \((weightBaby * 10) / (200 / 5)) мл до 4 раз в день.
"""
    }
}
