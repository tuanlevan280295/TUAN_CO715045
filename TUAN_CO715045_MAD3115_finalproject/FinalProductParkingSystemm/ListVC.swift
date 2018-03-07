//
//  ListVC.swift
//  FinalProductParkingSystemm
//
//  Created by levantuan on 2018-03-07.
//  Copyright © 2018 levantuan. All rights reserved.
//

import UIKit

class ListVC: UIViewController {

    @IBOutlet weak var txtAddress: UITextField!
    
    @IBOutlet weak var txtYearold: UITextField!
    
    @IBOutlet weak var txtJob: UITextField!
    
    @IBAction func List(_ sender: UIButton) {
    self.updateStore()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func updateStore(){
        performSegue(withIdentifier: "PassUpdate", sender: self)
}
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let destination = segue.destination as? Profiles {
        destination.Address = txtAddress.text!
        destination.YearOld = txtYearold.text!
        destination.Job = txtJob.text!

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
}
}
