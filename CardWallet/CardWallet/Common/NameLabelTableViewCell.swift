//
//  NameLabelTableViewCell.swift
//  CardWallet
//
//  Created by Ania Kuliś on 12.02.2018.
//  Copyright © 2018 Ania Kulis. All rights reserved.
//

import UIKit

class NameLabelTableViewCell: UITableViewCell, UITextFieldDelegate {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
