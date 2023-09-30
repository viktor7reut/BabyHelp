//
//  HealthyEatingTipsVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 10.09.23.
//

import UIKit

final class HealthyEatingTipsVC: UIViewController {
    @IBOutlet weak var titleHealthyEatingTipsLabel: UILabel!
    @IBOutlet weak var healthyEatingTipsTextView: UITextView!
    
    let textForHealthyEatingTips = """
    Вскармливание грудного ребенка молоком — это большая ответственность для матери. Кормящей маме важно помнить: выработка молока во многом зависит от ее ежедневного рациона. В связи с этим питание кормящей женщины должно быть сбалансированным и правильным.
    Желательно исключить из ежедневного меню копченые и острые блюда. Пища в рационе кормящей мамы должна быть максимально постной.
    Во время кормления новорожденного лучше ограничить количество сладких сдобных изделий, шоколада, цитрусовых в своем питании.
    Как можно реже включайте в рацион питания газировку, кофе и чай.
    Период кормления новорожденных грудью — отличное время для того, чтобы навсегда расстаться с вредными привычками. В идеале будущая мама сделала это еще на этапе планирования беременности, а если еще нет — не поздно и сейчас. Употребление алкоголя и курение крайне негативно влияют на здоровье мамы и ее малыша. Еще одна важная рекомендация не относится к здоровому питанию, однако о ней стоит непременно упомянуть. Во время грудного вскармливания следует с особой осторожностью и внимательностью относиться к применению лекарственных препаратов. Пожалуйста, проконсультируйтесь со специалистом!
"""
    
    override func viewDidLoad() {
        titleHealthyEatingTipsLabel.text = "Рекомендации по здоровому питанию"
        titleHealthyEatingTipsLabel.textColor = .moderateSlateBlueColor
        titleHealthyEatingTipsLabel.font = .systemFont(ofSize: 17.0, weight: .heavy)
        
        healthyEatingTipsTextView.isEditable = false
        healthyEatingTipsTextView.isSelectable = false
        
        healthyEatingTipsTextView.text = textForHealthyEatingTips
        
        healthyEatingTipsTextView.setupTextViewFont()
    }
}
