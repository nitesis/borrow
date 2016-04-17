//
//  TitleTableViewCell.swift
//  borrow
//
//  Created by soulsista on 17.04.16.
//  Copyright © 2016 Raphael Brunner. All rights reserved.
//

import UIKit

class TitleTableViewCell: UITableViewCell {
    
    // MARK: Properties
    @IBOutlet weak var title: UITextField!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
