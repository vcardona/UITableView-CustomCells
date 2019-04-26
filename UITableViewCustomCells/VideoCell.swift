//
//  VideoCell.swift
//  UITableViewCustomCells
//
//  Created by Victor Hugo on 4/25/19.
//  Copyright © 2019 Vintage Robot. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell
{

    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    
    func setVideo(video: Video)
    {
        videoImageView.image = video.image
        videoTitleLabel.text = video.title
    }
}
