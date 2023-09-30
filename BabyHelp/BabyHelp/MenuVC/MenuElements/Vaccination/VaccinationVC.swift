//
//  VaccinationVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 30.08.23.
//

import UIKit

final class VaccinationVC: UIViewController {
    @IBOutlet weak var titleVaccinationLabel: UILabel!
    @IBOutlet weak var vaccinationTextView: UITextView!
    @IBOutlet weak var vaccinationImageView: UIImageView!
    
    let textForVaccination = """
    Противопоказания бывают:
1) Временные - до 1 месяца (к ним относятся острые заболевания, обострение хронических). Плановая вакцинация проводится после достижения полной или частичной ремиссиии.
2) Длительные - больше 1 месяца(устнавливается врачебным консилиумом, на срок от 1 месяца до 1 года, по истечению которого поднимается вопрос о возможности вакцинации)

*Абсолютные противопоказания:
Для всех вакцин - сильная реакция на введение вакцины ранее.
Для живых вакцин - первичные иммунодефициты, иммуносупрессия, злокачественные новообразования, беременность.
БЦЖ - вес меньше 2000 г, келоидный рубец.
АКДС - прогрессирующее заболевание ЦНС, энцефалит, энцефалопатия, афебрильные судороги, анафилаксический шок(развивающийся в течении 24 часлв после прививки)
КПК - тяжелые анафилактические реакции на аминогликазиды и яичный белок (кроме краснушной)
Вакцина от вируса гепатита В - аллергические реакции на пекарские дрожжи.

Если затрагивать распространенные мифы о том, что "наш ребенок слишком слабенький,
подождем пока подростет" и "наш ребенок слишком частот болеет, подождем пока
окрепнет" - то в таких случаях нужно помнить, что именно для таких деток существует
вакцинация, и как раз им необходима активная защита.
"""
    
    private var initialTransform: CGAffineTransform = .identity
    private var lastScale: CGFloat = 1.0
    
    override func viewDidLoad() {
        titleVaccinationLabel.text = "Вакцинация"
        titleVaccinationLabel.setupStyleLabel()
        
        vaccinationTextView.isEditable = false
        vaccinationTextView.isSelectable = false
        
        vaccinationTextView.text = textForVaccination
        
        vaccinationTextView.setupTextViewFont()
        
        let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(handlePinch(_:)))
        vaccinationImageView.addGestureRecognizer(pinchGesture)
        
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlePan(_:)))
        vaccinationImageView.addGestureRecognizer(panGesture)
        
        let doubleTapGesture = UITapGestureRecognizer(target: self, action: #selector(handleDoubleTap(_:)))
        doubleTapGesture.numberOfTapsRequired = 2
        vaccinationImageView.addGestureRecognizer(doubleTapGesture)
        
        vaccinationImageView.isUserInteractionEnabled = true
        
    }
    
    @objc private func handlePinch(_ gesture: UIPinchGestureRecognizer) {
        guard let view = gesture.view else { return }
        
        if gesture.state == .began {
            initialTransform = view.transform
        }
        
        if gesture.state == .began || gesture.state == .changed {
            let scale = gesture.scale
            view.transform = initialTransform.scaledBy(x: scale, y: scale)
            lastScale = scale
        }
    }
    
    @objc private func handlePan(_ gesture: UIPanGestureRecognizer) {
        guard let view = gesture.view else { return }
        
        if gesture.state == .began {
        }
        
        if gesture.state == .changed {
            let translation = gesture.translation(in: view.superview)
            view.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
            gesture.setTranslation(.zero, in: view.superview)
        }
    }
    
    @objc private func handleDoubleTap(_ gesture: UITapGestureRecognizer) {
        guard let view = gesture.view else { return }
        
        if view.transform != .identity {
            UIView.animate(withDuration: 0.3) {
                view.transform = .identity
                view.frame.origin.x = self.titleVaccinationLabel.frame.origin.x
                view.frame.origin.y = self.titleVaccinationLabel.frame.origin.y + self.titleVaccinationLabel.frame.size.height
                view.frame.size.width = self.titleVaccinationLabel.frame.size.width
                view.frame.size.height = self.vaccinationImageView.frame.size.height
            }
        }
    }
}
