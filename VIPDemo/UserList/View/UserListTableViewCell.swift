//
//  UserListTableViewCell.swift
//  VIPDemo
//
//  Created by Sneha Jarsania on 7/28/20.
//  Copyright © 2020 Sneha Jarsania. All rights reserved.
//

import UIKit

class UserListTableViewCell: UITableViewCell {

    @IBOutlet var name: UILabel!
    @IBOutlet var emailLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
