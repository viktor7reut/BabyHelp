//
//  VitaminDVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 30.08.23.
//

import UIKit

final class VitaminDVC: UIViewController {
    @IBOutlet weak var titleVitaminDLabel: UILabel!
    @IBOutlet weak var vitaminDTextView: UITextView!
    @IBOutlet weak var vitaminDSlider: UISlider!
    @IBOutlet weak var vitaminDInfoLabel: UILabel!
    @IBOutlet weak var vitaminDRecommendationLabel: UILabel!
    
    let textForBorderStates = """
    Главная функция этого витамина в организме - стимулирование всасывания фосфора и кальция из тонкого кишечника, и повышение их концентрации в плазме крови. Также витамин D3 укрепляет иммунитет и оказывает воздействие на формирование нервной системы новорожденного. Он улучшает усвоение железа, т.к. рахит и железодефицитная анемия у ребенка часто взаимосвязаны между собой.
    Необходимо стремиться к уровню витамина D выше 30 нг/мл.
    От 21 нг/мл до 29 нг/мл - недостаточность витамина D, которая требует приема профилактических доз(дети до 1 года - 400-1000 МЕ (IU), с 1 года до 18 лет - 1000 МЕ (IU))
    Уровень нижу 20 нг/мл - дефицит витамина D, в данном случае необходимы лечебные дозировки витамина D (в данном вопросе необходима консультация врача педиатра)
"""
    
    var levelVitD: CGFloat = 0 {
            didSet {
                vitaminDInfoLabel.text = "Уровень витамина D \(levelVitD) нг/мл"
            }
        }
    
    override func viewDidLoad() {
        titleVitaminDLabel.text = "Витамин D"
        titleVitaminDLabel.setupStyleLabel()
        
        vitaminDTextView.isEditable = false
        vitaminDTextView.isSelectable = false
        
        vitaminDTextView.text = textForBorderStates
        
        vitaminDTextView.setupTextViewFont()
        
        vitaminDSlider.minimumValue = 0
        vitaminDSlider.maximumValue = 50
        
        vitaminDSlider.value = 30
        
        vitaminDSlider.addTarget(self, action: #selector(vitaminDSliderValueChanged(_:)), for: .valueChanged)
    }
    
    @objc func vitaminDSliderValueChanged(_ sender: UISlider) {
        let value = Int(sender.value)
        
        levelVitD = CGFloat(value)
        
        if value > 30 {
            vitaminDRecommendationLabel.text = "Все хорошо"
        }
        if value > 21 && value < 29 {
            vitaminDRecommendationLabel.text = "Необходима профилактическая доза"
        }
        if value < 20 {
            vitaminDRecommendationLabel.text = "Необходима лечебная доза"
        }
        
    }
}
