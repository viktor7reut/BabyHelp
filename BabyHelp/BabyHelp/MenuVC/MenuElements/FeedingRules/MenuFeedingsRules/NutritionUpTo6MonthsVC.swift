//
//  NutritionUpTo6MonthsVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 10.09.23.
//

import UIKit

final class NutritionUpTo6MonthsVC: UIViewController {
    @IBOutlet weak var titleNutritionUpTo6MonthsLabel: UILabel!
    @IBOutlet weak var nutritionUpTo6MonthsTextView: UITextView!
    
    let textForNutritionUpTo6Months = """
    Специалисты в области педиатрии рекомендуют кормить ребенка исключительно грудью, как минимум, до 6 месяцев.
    Основные правила кормления грудью:
    В первое время четкий режим кормления новорожденного еще не налажен. Малыш кормится «по требованию», то есть прикладывается к груди, как только захотел кушать. Такой режим помогает установить прочную психологическую связь между мамой и ребенком и наладить лактацию.
    Норма молока для новорожденного за одно кормление — вопрос индивидуальный, специалисты советуют довериться в этом вопросе ребенку: он съест столько, сколько ему необходимо. Поэтому не стоит мучить себя вопросами, сколько новорожденный должен съедать за одно кормление? Важно не отрывать его от груди, так как грудное молоко имеет свойство меняться в процессе кормления. Также молоко мамы изменяется в зависимости от возраста ребенка и времени суток. Просто прикладывайте кроху к груди и получайте от этого удовольствие.
    Со временем нужно постараться установить режим питания грудного ребенка. Обычно это происходит естественным образом: подрастающий малыш демонстрирует признаки голода все реже, раз в 3 или 4 часа. В день получается около 6–7 кормлений грудью.
    Кормящей маме для сохранения лактации необходимо пить достаточное количество жидкости — до двух литров в день.
    Еще один вопрос, который беспокоит матерей, — как кормить ночью. Специалисты отмечают, что в этот период интервал между кормлениями может быть увеличен до 5–6 часов. Однако для каждого малыша все индивидуально, и не существует единственно правильных рекомендаций режима питания новорожденных в ночное время.
"""
    
    override func viewDidLoad() {
        titleNutritionUpTo6MonthsLabel.text = "Питание до 6 месяцев"
        titleNutritionUpTo6MonthsLabel.setupStyleLabel()
        
        nutritionUpTo6MonthsTextView.isEditable = false
        nutritionUpTo6MonthsTextView.isSelectable = false
        
        nutritionUpTo6MonthsTextView.text = textForNutritionUpTo6Months
        
        nutritionUpTo6MonthsTextView.setupTextViewFont()
    }
}
