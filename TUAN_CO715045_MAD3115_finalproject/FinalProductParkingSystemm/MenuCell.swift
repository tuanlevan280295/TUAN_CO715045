//
//  MenuCell.swift
//  FinalProductParkingSystemm
//
//  Created by levantuan on 2018-03-01.
//  Copyright © 2018 levantuan. All rights reserved.
//

import UIKit

class MenuCell: UITableViewCell {

    @IBOutlet weak var VideoImageViewCell: UIImageView!
    
    @IBOutlet weak var VideoTitleLabel: UILabel!
    
    func setVideo(video: Video) {
        VideoImageViewCell.image = video.image
        VideoTitleLabel.text = video.title
    }
    
}
