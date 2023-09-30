//
//  NervousTableViewCell.swift
//  BabyHelp
//
//  Created by Виктор Реут on 4.09.23.
//

import UIKit

class NervousTableViewCell: UITableViewCell {
    
    @IBOutlet weak var NervousCellButton: UIButton!
    
    override func awakeFromNib() {
            super.awakeFromNib()
            
        NervousCellButton.setupStyleButton()
        }
}
