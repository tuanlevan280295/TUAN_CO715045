//
//  ListCell.swift
//  FinalProductParkingSystemm
//
//  Created by levantuan on 2018-03-06.
//  Copyright © 2018 levantuan. All rights reserved.
//

import UIKit

class ListCell: UITableViewCell {

    @IBOutlet weak var Email: UILabel!
    @IBOutlet weak var CarPlateNumber: UILabel!
    @IBOutlet weak var PhoneNumber: UILabel!
    @IBOutlet weak var name: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
