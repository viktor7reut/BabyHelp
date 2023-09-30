//
//  MenuTableViewCell.swift
//  BabyHelp
//
//  Created by Виктор Реут on 28.08.23.
//

import UIKit

class MenuTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cellButton: UIButton!
    
    override func awakeFromNib() {
            super.awakeFromNib()
            
        cellButton.setupStyleButton()
        }
}
