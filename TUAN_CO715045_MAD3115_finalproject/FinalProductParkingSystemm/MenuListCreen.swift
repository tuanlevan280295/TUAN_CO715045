//
//  MenuListCreen.swift
//  FinalProductParkingSystemm
//
//  Created by levantuan on 2018-03-01.
//  Copyright © 2018 levantuan. All rights reserved.
//

import UIKit

class MenuListCreen: UIViewController {
    

    @IBOutlet weak var tableView: UITableView!
    
    var videos: [Video] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    func createArray() -> [Video] {
        
       // tableView.delegate = self
       // tableView.dataSource = self
        
        var tempVideos: [Video] = []
        var mytile = ["1","2","3","4"]
        let video1 = Video(image: #imageLiteral(resourceName: "logout icon.jpg"), title: "1")
        let video2 = Video(image: #imageLiteral(resourceName: "logout icon.jpg"), title: "2")
        let video3 = Video(image: #imageLiteral(resourceName: "manual icon.jpeg"), title: "3")
        let video4 = Video(image: #imageLiteral(resourceName: "profile icon.jpg"), title: "4")
        let video5 = Video(image: #imageLiteral(resourceName: "receipt icon.jpg"), title: "5")
        let video6 = Video(image: #imageLiteral(resourceName: "Report icon.jpg"), title: "6")
        let video7 = Video(image: #imageLiteral(resourceName: "support icon.jpg"), title: "7")
        
        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        tempVideos.append(video4)
        tempVideos.append(video5)
        tempVideos.append(video6)
        tempVideos.append(video7)
        
        return tempVideos
    }
}
extension MenuListCreen: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let video = videos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! MenuCell
        
        cell.setVideo(video: video)
        
        return cell
}
    
}
