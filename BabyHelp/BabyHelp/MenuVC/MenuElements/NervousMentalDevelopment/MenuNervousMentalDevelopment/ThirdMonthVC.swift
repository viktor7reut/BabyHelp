//
//  ThirdMonthVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 5.09.23.
//

import UIKit

final class ThirdMonthVC: UIViewController {
    @IBOutlet weak var titleThirdMonthLabel: UILabel!
    @IBOutlet weak var thirdMonthTextView: UITextView!
    
    let textForThirdMonth = """
Активное бодрствование. Комплекс оживления при общении. Певучее гуление. Плавно следит за игрушкой
во всех направлениях. Сочетанный поворот головы и глаз кисточнику звука. Направляет руку к игрушке.
Рассматривает, ощупывает свои руки. Лежа на животе опора на согнутые под острым углом предплечья.
В вертикальном положении хорошо удерживает голову. Физиологический гипертонус мышц постепенно
проходит – ручки и ножки легко распрямляются, кисти не сжаты в кулачки. Может начать
переворачиваться со спины на бок и даже на живот. В связи с угасанием рефлекса опоры, при
вертикализации ребёнка он начинает приседать или очень слабо опирается. Реакция опоры и
автоматическая походка отсутствуют.
"""
    
    override func viewDidLoad() {
        titleThirdMonthLabel.text = "3 месяц жизни"
        titleThirdMonthLabel.setupStyleLabel()
        
        thirdMonthTextView.isEditable = false
        thirdMonthTextView.isSelectable = false
        
        thirdMonthTextView.text = textForThirdMonth
        
        thirdMonthTextView.setupTextViewFont()
    }
}
