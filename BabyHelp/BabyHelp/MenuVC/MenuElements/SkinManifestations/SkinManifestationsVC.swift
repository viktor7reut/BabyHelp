//
//  SkinManifestationsVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 30.08.23.
//

import UIKit

final class SkinManifestationsVC: UIViewController {
    @IBOutlet weak var titleSkinManifestationsLabel: UILabel!
    @IBOutlet weak var skinManifestationsTextView: UITextView!
    @IBOutlet weak var toxicErythemaButton: UIButton!
    @IBOutlet weak var acneNewbornsButton: UIButton!
    @IBOutlet weak var pricklyHeatButton: UIButton!
    @IBOutlet weak var diaperDermatitisButton: UIButton!
    
    let textForSkinManifestations = """
Кожа малыша щедра на высыпания. Как правила большинство сыпей безболезненные, безобидные, проходит быстро и не требует специфического лечения.
"""
    
    
    override func viewDidLoad() {
        titleSkinManifestationsLabel.text = "Кожные проявления"
        titleSkinManifestationsLabel.setupStyleLabel()
        
        skinManifestationsTextView.isEditable = false
        skinManifestationsTextView.isSelectable = false
        
        skinManifestationsTextView.text = textForSkinManifestations
        
        toxicErythemaButton.setupStyleButton()
        acneNewbornsButton.setupStyleButton()
        pricklyHeatButton.setupStyleButton()
        diaperDermatitisButton.setupStyleButton()
    }
    
    @IBAction private func toxicErythemaButtonDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyboard.instantiateViewController(withIdentifier: "\(ToxicErythemaVC.self)")
        present(nextVC, animated: true)
    }
    
    @IBAction private func acneNewbornsButtonDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyboard.instantiateViewController(withIdentifier: "\(AcneNewbornsVC.self)")
        present(nextVC, animated: true)
    }
    
    @IBAction private func pricklyHeatVCButtonDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyboard.instantiateViewController(withIdentifier: "\(PricklyHeatVC.self)")
        present(nextVC, animated: true)
    }
    
    @IBAction private func diaperDermatitisButtonDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyboard.instantiateViewController(withIdentifier: "\(DiaperDermatitisVC.self)")
        present(nextVC, animated: true)
    }
}
