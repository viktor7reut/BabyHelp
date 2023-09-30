//
//  ParacetamolVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 14.09.23.
//

import UIKit

final class ParacetamolVC: UIViewController {
    @IBOutlet weak var titleParacetamolLabel: UILabel!
    @IBOutlet weak var paracetamolSlider: UISlider!
    @IBOutlet weak var paracetamolInfoLabel: UILabel!
    @IBOutlet weak var paracetamolRecommendationLabel: UILabel!
    @IBOutlet weak var paracetamolRecommendationDrugLabel: UILabel!
    
    var weightBaby: Int = 2 {
            didSet {
                paracetamolInfoLabel.text = "Вес малыша \(weightBaby) кг"
            }
        }
    
    override func viewDidLoad() {
        
        titleParacetamolLabel.setupStyleLabel()
        
        paracetamolSlider.minimumValue = 2
        paracetamolSlider.maximumValue = 20
        
        paracetamolSlider.value = 2
        
        paracetamolSlider.addTarget(self, action: #selector(paracetamolSliderValueChanged(_:)), for: .valueChanged)
    }
    
    @objc func paracetamolSliderValueChanged(_ sender: UISlider) {
        let value = sender.value
        
        weightBaby = Int(value)
        
        paracetamolRecommendationLabel.text = "Необходимая доза - \(weightBaby * 15) мг"
        
        paracetamolRecommendationDrugLabel.text = """
Cироп 120 мг в 5 мл - \((weightBaby * 15) / (120 / 5)) мл до 4 раз в день.
Cироп 150 мг в 5 мл - \((weightBaby * 15) / (150 / 5)) мл до 4 раз в день.
"""
    }
}
