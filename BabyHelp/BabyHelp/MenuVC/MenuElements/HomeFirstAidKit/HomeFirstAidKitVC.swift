//
//  HomeFirstAidKitVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 30.08.23.
//

import UIKit

final class HomeFirstAidKitVC: UIViewController {
    @IBOutlet private weak var titleHomeFirstAidKitLabel: UILabel!
    @IBOutlet private weak var paracetamolButton: UIButton!
    @IBOutlet private weak var ibuprofenButton: UIButton!
    @IBOutlet private weak var ambroxolButton: UIButton!
    @IBOutlet private weak var acetylCysteinButton: UIButton!
    @IBOutlet private weak var simethiconeButton: UIButton!
    
    override func viewDidLoad() {
        titleHomeFirstAidKitLabel.text = "Домашняя аптечка"
        titleHomeFirstAidKitLabel.setupStyleLabel()
        
        paracetamolButton.setupStyleButton()
        ibuprofenButton.setupStyleButton()
        ambroxolButton.setupStyleButton()
        acetylCysteinButton.setupStyleButton()
        simethiconeButton.setupStyleButton()

    }
    
    @IBAction private func paracetamolButtonButtonDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyboard.instantiateViewController(withIdentifier: "\(ParacetamolVC.self)")
        present(nextVC, animated: true)
    }
    
    @IBAction private func ibuprofenButtonButtonDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyboard.instantiateViewController(withIdentifier: "\(IbuprofenVC.self)")
        present(nextVC, animated: true)
    }
    
    @IBAction private func ambroxolButtonButtonDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyboard.instantiateViewController(withIdentifier: "\(AmbroxolVC.self)")
        present(nextVC, animated: true)
    }
    
    @IBAction private func acetylCysteinButtonDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyboard.instantiateViewController(withIdentifier: "\(AcetylCysteinVC.self)")
        present(nextVC, animated: true)
    }
    
    @IBAction private func simethiconeButtonDidTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyboard.instantiateViewController(withIdentifier: "\(SimethiconeVC.self)")
        present(nextVC, animated: true)
    }
}
