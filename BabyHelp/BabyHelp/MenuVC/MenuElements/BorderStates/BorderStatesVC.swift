//
//  BorderStatesVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 28.08.23.
//

import UIKit

final class BorderStatesVC: UIViewController {
    
    @IBOutlet weak var titleBorderStatesLabel: UILabel!
    @IBOutlet weak var borderStatesTextView: UITextView!
    @IBOutlet weak var physiologicalWeightLossButton: UIButton!
    @IBOutlet weak var newbornJaundiceButton: UIButton!
    @IBOutlet weak var toxicErythemaButton: UIButton!
    @IBOutlet weak var uricAcidHeartAttackButton: UIButton!
    @IBOutlet weak var sexualCrisisButton: UIButton!
    @IBOutlet weak var telangiectasiaButton: UIButton!
    
    let textForBorderStates = "Пограничные, транзиторные и временные состояния - синонимы одного и того же состояния у ребенка. Во время перехода от состояния внутриутробного развития до жизни во внежней среде, ребенку необходимо время а также ряд адаптационных механизмов для комфортной жизни."
    
    override func viewDidLoad() {
        titleBorderStatesLabel.text = "Пограничные состояния"
        titleBorderStatesLabel.setupStyleLabel()
        
        borderStatesTextView.isEditable = false
        borderStatesTextView.isSelectable = false
        
        borderStatesTextView.text = textForBorderStates
        
        physiologicalWeightLossButton.setupStyleButton()
        newbornJaundiceButton.setupStyleButton()
        toxicErythemaButton.setupStyleButton()
        uricAcidHeartAttackButton.setupStyleButton()
        sexualCrisisButton.setupStyleButton()
        telangiectasiaButton.setupStyleButton()
        
    }
    
    @IBAction private func physiologicalWeightLossButtonDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyboard.instantiateViewController(withIdentifier: "\(PhysiologicalWeightLossVC.self)")
        present(nextVC, animated: true)
    }
    
    @IBAction private func newbornJaundiceButtonDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyboard.instantiateViewController(withIdentifier: "\(NewbornJaundiceVC.self)")
        present(nextVC, animated: true)
    }
    
    @IBAction private func toxicErythemaButtonDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyboard.instantiateViewController(withIdentifier: "\(ToxicErythemaVC.self)")
        present(nextVC, animated: true)
    }
    
    @IBAction private func uricAcidHeartAttackButtonDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyboard.instantiateViewController(withIdentifier: "\(UricAcidAttackVC.self)")
        present(nextVC, animated: true)
    }
    
    @IBAction private func sexualCrisisButtonDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyboard.instantiateViewController(withIdentifier: "\(SexualCrisisVC.self)")
        present(nextVC, animated: true)
    }
    
    @IBAction private func telangiectasiaButtonDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyboard.instantiateViewController(withIdentifier: "\(TelangiectasiaVC.self)")
        present(nextVC, animated: true)
    }
    
}
