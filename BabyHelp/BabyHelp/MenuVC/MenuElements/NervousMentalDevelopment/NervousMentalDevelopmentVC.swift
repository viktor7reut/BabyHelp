//
//  NervousMentalDevelopmentVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 30.08.23.
//

import UIKit

final class NervousMentalDevelopmentVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet private weak var nervousTableView: UITableView!
    @IBOutlet private weak var nervousMentalDevelopmentLabel: UILabel!
    
    enum NervousMenuItems: CaseIterable {
        case firstMonth
        case secondMonth
        case thirdMonth
        case fourthMonth
        case fifthMonth
        case sixthMonth
        case seventhEighthMonth
        case ninthTenthMonth
        case eleventhTwelfthMonth
        case motorSkillPyramid
        
        var title: String {
            switch self {
            case .firstMonth: return "1 месяц жизни"
            case .secondMonth: return "2 месяц жизни"
            case .thirdMonth: return "3 месяц жизни"
            case .fourthMonth: return "4 месяц жизни"
            case .fifthMonth: return "5 месяц жизни"
            case .sixthMonth: return "6 месяц жизни"
            case .seventhEighthMonth: return "7-8 месяц жизни"
            case .ninthTenthMonth: return "9-10 месяц жизни"
            case .eleventhTwelfthMonth: return "11-12 месяц жизни"
            case .motorSkillPyramid: return "Пирамида моторных навыков"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nervousMentalDevelopmentLabel.text = "Нервно-психическое развитие"
        nervousMentalDevelopmentLabel.setupStyleLabel()
        
        if nervousTableView != nil {
            nervousTableView.dataSource = self
            nervousTableView.delegate = self
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        NervousMenuItems.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "\(NervousTableViewCell.self)", for: indexPath) as! NervousTableViewCell
        let title = NervousMenuItems.allCases[indexPath.row].title
        cell.NervousCellButton.setTitle(title, for: .normal)
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let selectedItem = NervousMenuItems.allCases[indexPath.row]
        
        var nextVC: UIViewController?
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        switch selectedItem {
        case .firstMonth:
            nextVC = storyboard.instantiateViewController(withIdentifier: "\(FirstMonthVC.self)")
            
        case .secondMonth:
            nextVC = storyboard.instantiateViewController(withIdentifier: "\(SecondMonthVC.self)")
            
        case .thirdMonth:
            nextVC = storyboard.instantiateViewController(withIdentifier: "\(ThirdMonthVC.self)")
            
        case .fourthMonth:
            nextVC = storyboard.instantiateViewController(withIdentifier: "\(FourthMonthVC.self)")
            
        case .fifthMonth:
            nextVC = storyboard.instantiateViewController(withIdentifier: "\(FifthMonthVC.self)")
            
        case .sixthMonth:
            nextVC = storyboard.instantiateViewController(withIdentifier: "\(SixthMonthVC.self)")
            
        case .seventhEighthMonth:
            nextVC = storyboard.instantiateViewController(withIdentifier: "\(SeventhEighthMonthVC.self)")
            
        case .ninthTenthMonth:
            nextVC = storyboard.instantiateViewController(withIdentifier: "\(NinthTenthMonthVC.self)")
            
        case .eleventhTwelfthMonth:
            nextVC = storyboard.instantiateViewController(withIdentifier: "\(EleventhTwelfthMonthVC.self)")
            
        case .motorSkillPyramid:
            nextVC = storyboard.instantiateViewController(withIdentifier: "\(MotorSkillPyramidVC.self)")
        }
        
        if let nextVC = nextVC {
            navigationController?.pushViewController(nextVC, animated: true)
        }
    }
}
    
