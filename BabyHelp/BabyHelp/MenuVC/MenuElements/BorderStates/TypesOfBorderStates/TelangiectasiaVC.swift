//
//  TelangiectasiaVC.swift
//  BabyHelp
//
//  Created by Виктор Реут on 3.09.23.
//

import UIKit

final class TelangiectasiaVC: UIViewController {
    @IBOutlet weak var titleTelangiectasiaLabel: UILabel!
    @IBOutlet weak var telangiectasiaTextView: UITextView!
    
    let textForTelangiectasia = """
    Телеангиэктазии – густо расположенные расширенные капилляры кожи в виде пятен, располагающиеся чаще в зоне внутриутробного предлежания головки – в области затылка или на лбу, иногда в области бровей и век.
    Пятна исчезают при надавливании и усиливаются при крике ребенка. Такие телеангэктазии исчезают самостоятельно. Лечение не требуется.
    Сальный ихтиоз возникает вследствие усиленного выделения сальными железами быстровысыхающего кожного сала. Кожа новорожденного ребенка становится сухой, грубой на ощупь, приобретает буроватый оттенок. На поверхности сальной корки появляются поверхностные трещины.
    Спустя неделю процесс заканчивается обильным отрубевидным или пластинчатым шелушением.
    После отторжения корки на 6–8 день кожа приобретает нормальный вид.

"""
    
    override func viewDidLoad() {
        titleTelangiectasiaLabel.text = "Телеангиоэктазии"
        titleTelangiectasiaLabel.setupStyleLabel()
        
        telangiectasiaTextView.isEditable = false
        telangiectasiaTextView.isSelectable = false
        
        telangiectasiaTextView.text = textForTelangiectasia
        
        telangiectasiaTextView.setupTextViewFont()
    }
    
}
