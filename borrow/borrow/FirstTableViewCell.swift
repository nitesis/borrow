//
//  FirstViewTableCellTableViewCell.swift
//  borrow
//
//  Created by anilabircher on 02.06.16.
//  Copyright © 2016 Raphael Brunner. All rights reserved.
//

import UIKit

class FirstTableViewCell: UITableViewCell {
   
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var date: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
