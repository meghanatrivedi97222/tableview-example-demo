//
//  TableViewCell.swift
//  tableviewdemo
//
//  Created by Vaibhav on 09/05/18.
//  Copyright © 2018 Vaibhav. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var my_label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
