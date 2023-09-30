//
//  GreetingsVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 14.08.23.
//

import UIKit

final class GreetingsVC: UIViewController {
    @IBOutlet private weak var babyImage: UIImageView!
    @IBOutlet private weak var appName: UILabel!
    @IBOutlet private weak var greetingsTitle: UILabel!
    @IBOutlet private weak var goButton: UIButton!
    
    override func viewDidLoad() {
        babyImage.image = UIImage(named: "baby")
        babyImage.setBorderImage(width: 1, corner: 150, color: .clear)
        appName.text = "BabyHelp"
        appName.textColor = .titleColor
        greetingsTitle.text = "С заботой о Вашем малыше"
        greetingsTitle.textColor = .titleColor
        
        goButton.setupStyleButton()
    }
    
    @IBAction private func goButtonDidTap() {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nextScreen = mainStoryboard.instantiateViewController(identifier: "\(ProfileVC.self)")
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
}
