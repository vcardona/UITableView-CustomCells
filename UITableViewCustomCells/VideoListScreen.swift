//
//  VideoListScreen.swift
//  UITableViewCustomCells
//
//  Created by Victor Hugo on 4/25/19.
//  Copyright © 2019 Vintage Robot. All rights reserved.
//

import UIKit

class VideoListScreen: UIViewController
{
    var videos: [Video] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        videos = createArray()
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    func createArray() -> [Video]
    {
        var tempVideos: [Video] = []
        
        let video1 = Video(image: #imageLiteral(resourceName: "dev-setup"), title: "Your First App")
        let video2 = Video(image: #imageLiteral(resourceName: "beginner_first_app"), title: "My Dev Setup")
        let video3 = Video(image: #imageLiteral(resourceName: "ss-uipickerview-card"), title: "iOS Interview")
        let video4 = Video(image: #imageLiteral(resourceName: "vlog-4"), title: "Buttons in TableViews")
        let video5 = Video(image: #imageLiteral(resourceName: "ss-delegates"), title: "UIPickerView Tutorial")
        let video6 = Video(image: #imageLiteral(resourceName: "ss-delegates"), title: "Day in the Life")


        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        tempVideos.append(video4)
        tempVideos.append(video5)
        tempVideos.append(video6)
        
        return tempVideos

        
    }
}

extension VideoListScreen: UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let video = videos[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
        
        cell.setVideo(video: video)
        
        return cell
    }
}
