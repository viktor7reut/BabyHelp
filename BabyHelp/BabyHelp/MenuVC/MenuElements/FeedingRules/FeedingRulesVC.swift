//
//  FeedingRulesVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 30.08.23.
//

import UIKit

final class FeedingRulesVC: UIViewController {
    @IBOutlet weak var titleFeedingRulesLabel: UILabel!
    @IBOutlet weak var feedingRulesTextView: UITextView!
    @IBOutlet private weak var nutritionUpTo6MonthsButton: UIButton!
    @IBOutlet private weak var nutritionAfter6MonthsButton: UIButton!
    @IBOutlet private weak var healthyEatingTipsButton: UIButton!
    
    let textForFeedingRules = """
    Питание новорожденного очень важно для его здорового роста и развития уже с первых дней жизни. Грудное вскармливание называют естественным, ведь молоко мамы обладает способностью меняться в зависимости от нужд малыша. Детские специалисты настаивают на важности сохранения лактации и кормлении новорожденного ребенка молоком мамы. Именно материнское молоко дает организму ребенка все необходимое для его полноценного роста и развития. Оно способно оказывать положительный эффект на здоровье ребенка до двух лет жизни, поэтому важно сохранять грудное вскармливание, пока малыш не достигнет этого возраста.
"""
    
    override func viewDidLoad() {
        titleFeedingRulesLabel.text = "Правила кормления"
        titleFeedingRulesLabel.setupStyleLabel()
        
        feedingRulesTextView.isEditable = false
        feedingRulesTextView.isSelectable = false
        
        feedingRulesTextView.text = textForFeedingRules
        
        feedingRulesTextView.setupTextViewFont()
        
        nutritionUpTo6MonthsButton.setupStyleButton()
        nutritionAfter6MonthsButton.setupStyleButton()
        healthyEatingTipsButton.setupStyleButton()
    }
    
    @IBAction private func nutritionUpTo6MonthsButtonDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyboard.instantiateViewController(withIdentifier: "\(NutritionUpTo6MonthsVC.self)")
        present(nextVC, animated: true)
    }
    
    @IBAction private func nutritionAfter6MonthsButtonDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyboard.instantiateViewController(withIdentifier: "\(NutritionAfter6MonthsVC.self)")
        present(nextVC, animated: true)
    }
    
    @IBAction private func healthyEatingTipsButtonDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyboard.instantiateViewController(withIdentifier: "\(HealthyEatingTipsVC.self)")
        present(nextVC, animated: true)
    }
}
