//
//  MenuVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 28.08.23.
//

import UIKit

enum MenuItems: CaseIterable {
    case BorderStates
    case NervousMentalDevelopment
    case SkinManifestations
    case VitaminD
    case FeedingRules
    case StoolBaby
    case BloodsElements
    case Vaccination
    case HomeFirstAidKit
    
    var title: String {
        switch self {
        case .BorderStates: return "Пограничные состояния"
        case .NervousMentalDevelopment: return "Нервно-психическое развитие"
        case .SkinManifestations: return "Кожныe проявления"
        case .VitaminD: return "Витамин D"
        case .FeedingRules: return "Правила кормления"
        case .StoolBaby: return "Стул у малыша"
        case .BloodsElements: return "Показатели крови"
        case .Vaccination: return "Вакцинация"
        case .HomeFirstAidKit: return "Домашняя аптечка"
        }
    }
}

class MenuVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet private weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if tableView != nil {
            tableView.dataSource = self
            tableView.delegate = self
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        MenuItems.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "\(MenuTableViewCell.self)", for: indexPath) as! MenuTableViewCell
        let title = MenuItems.allCases[indexPath.row].title
        cell.cellButton.setTitle(title, for: .normal)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
      let selectedItem = MenuItems.allCases[indexPath.row]
        
        var nextVC: UIViewController?
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        switch selectedItem {
        case .BorderStates:
            nextVC = storyboard.instantiateViewController(withIdentifier: "\(BorderStatesVC.self)")
        case .NervousMentalDevelopment:
            nextVC = storyboard.instantiateViewController(withIdentifier: "\(NervousMentalDevelopmentVC.self)")
        case .SkinManifestations:
            nextVC = storyboard.instantiateViewController(withIdentifier: "\(SkinManifestationsVC.self)")
        case .VitaminD:
            nextVC = storyboard.instantiateViewController(withIdentifier: "\(VitaminDVC.self)")
        case .FeedingRules:
            nextVC = storyboard.instantiateViewController(withIdentifier: "\(FeedingRulesVC.self)")
        case .StoolBaby:
            nextVC = storyboard.instantiateViewController(withIdentifier: "\(StoolBabyVC.self)")
        case .BloodsElements:
            nextVC = storyboard.instantiateViewController(withIdentifier: "\(BloodsElementsVC.self)")
        case .Vaccination:
            nextVC = storyboard.instantiateViewController(withIdentifier: "\(VaccinationVC.self)")
        case .HomeFirstAidKit:
            nextVC = storyboard.instantiateViewController(withIdentifier: "\(HomeFirstAidKitVC.self)")
        }
        
        if let nextVC = nextVC {
            navigationController?.pushViewController(nextVC, animated: true)
           }
    }
}
