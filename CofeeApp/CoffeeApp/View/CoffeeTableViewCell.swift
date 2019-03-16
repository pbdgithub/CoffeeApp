//
//  CoffeeTableViewCell.swift
//  VideoTutorial
//
//  Created by KSNALabs on 06/01/19.
//  Copyright © 2019 KSNALabs. All rights reserved.
//

import UIKit

class CoffeeTableViewCell: UITableViewCell {
    @IBOutlet weak var backView:UIView!
    @IBOutlet weak var coffeeName:UILabel!
    @IBOutlet weak var openUntill:UILabel!
    @IBOutlet weak var coffeePrice:UILabel!
    @IBOutlet weak var imgItem:UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
