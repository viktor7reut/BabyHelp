//
//  FirstMonthVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 5.09.23.
//

import UIKit

final class FirstMonthVC: UIViewController {
    @IBOutlet weak var titleFirstMonthLabel: UILabel!
    @IBOutlet weak var firstMonthVCTextView: UITextView!
    
    let textForFirstMonth = """
Кратковременная зрительная фиксация, плавное отслеживание движущихся предметов. Сосредоточение на
звуках. Прекращение или изменение характера плача на голос взрослого. Первая улыбка при общении со
взрослыми или во сне. Лежа на животе кратковременно приподнимает и удерживает голову. В положении на
животе поднимает голову, пытается ее удержать. Лежа на животе длительно удерживает голову, в
вертикальном положении — кратковременно. Удерживает вложенную игрушку в руку.
"""
    
    override func viewDidLoad() {
        titleFirstMonthLabel.text = "1 месяц жизни"
        titleFirstMonthLabel.setupStyleLabel()
        
        firstMonthVCTextView.isEditable = false
        firstMonthVCTextView.isSelectable = false
        
        firstMonthVCTextView.text = textForFirstMonth
        
        firstMonthVCTextView.setupTextViewFont()
    }
}
