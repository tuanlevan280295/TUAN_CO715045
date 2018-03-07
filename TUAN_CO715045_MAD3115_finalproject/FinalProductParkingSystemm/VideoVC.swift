//
//  VideoVC.swift
//  FinalProductParkingSystemm
//
//  Created by levantuan on 2018-03-06.
//  Copyright © 2018 levantuan. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class VideoVC: UIViewController {
    var Player: AVPlayer?
    var PlayerController = AVPlayerViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let videoString:String? = Bundle.main.path(forResource: "ParkingIntroducing", ofType: ".mp4")
        if let url = videoString {
            let videoURL = NSURL(fileURLWithPath: url)
            self.Player = AVPlayer(url: videoURL as URL)
            self.PlayerController.player = self.Player
        }
            
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func VideoAction(_ sender: UIButton) {
        self.present(self.PlayerController, animated: true, completion: {
            self.PlayerController.player?.play()
        })
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
