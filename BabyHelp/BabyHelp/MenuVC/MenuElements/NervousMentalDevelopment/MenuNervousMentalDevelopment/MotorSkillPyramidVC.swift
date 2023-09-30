//
//  MotorSkillPyramidVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 17.09.23.
//

import UIKit

final class MotorSkillPyramidVC: UIViewController {
    @IBOutlet weak var titleMotorSkillPyramidLabel: UILabel!
    @IBOutlet weak var motorSkillPyramidImageView: UIImageView!
    
    private var initialTransform: CGAffineTransform = .identity
    private var lastScale: CGFloat = 1.0
    
    override func viewDidLoad() {
        titleMotorSkillPyramidLabel.text = "Пирамида моторных навыков"
        titleMotorSkillPyramidLabel.setupStyleLabel()
        
        let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(handlePinch(_:)))
        motorSkillPyramidImageView.addGestureRecognizer(pinchGesture)
        
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlePan(_:)))
        motorSkillPyramidImageView.addGestureRecognizer(panGesture)
        
        motorSkillPyramidImageView.isUserInteractionEnabled = true
        
        let doubleTapGesture = UITapGestureRecognizer(target: self, action: #selector(handleDoubleTap(_:)))
        doubleTapGesture.numberOfTapsRequired = 2
        motorSkillPyramidImageView.addGestureRecognizer(doubleTapGesture)
        
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
                view.frame.origin.x = self.titleMotorSkillPyramidLabel.frame.origin.x
                view.frame.origin.y = self.titleMotorSkillPyramidLabel.frame.origin.y + self.titleMotorSkillPyramidLabel.frame.size.height
                view.frame.size.width = self.titleMotorSkillPyramidLabel.frame.size.width
                view.frame.size.height = self.motorSkillPyramidImageView.frame.size.height
            }
        }
    }
}
