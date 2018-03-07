//
//  RecieptVC.swift
//  FinalProductParkingSystemm
//
//  Created by levantuan on 2018-03-06.
//  Copyright © 2018 levantuan. All rights reserved.
//

import UIKit

class RecieptVC: UIViewController {
    
    @IBOutlet weak var txtEmailAddress: UITextField!
    @IBOutlet weak var txtCarPNumber: UITextField!
    @IBOutlet weak var txtCarCompany: UITextField!
    @IBOutlet weak var txtCarColor: UITextField!
    @IBOutlet weak var txtNoofHP: UITextField!
    @IBOutlet weak var txtLotNumber: UITextField!
    @IBOutlet weak var txtSpotNumber: UITextField!
    @IBOutlet weak var txtPaymentM: UITextField!
    @IBOutlet weak var txtPaymentA: UITextField!
    
    @IBOutlet weak var DATE: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func Save(_ sender: UIBarButtonItem) {
        if((txtEmailAddress.text?.isEmpty)! || (txtCarPNumber.text?.isEmpty)! || (txtCarPNumber.text?.isEmpty)! || (txtCarColor.text?.isEmpty)! || (txtNoofHP.text?.isEmpty)! || (txtLotNumber.text?.isEmpty)! || (txtPaymentM.text?.isEmpty)! || (txtPaymentA.text?.isEmpty)! || (DATE.text?.isEmpty)!){
            displayMyAlertMessage(UserMessage: "Please Field ")
        }
        
        if txtCarPNumber.text != UserDefaults.standard.object(forKey: "C") as? String
        {
            displayMyAlertMessage(UserMessage: "Your Car Plate Number does not match with your Profiles")
            return 
        }
        if txtEmailAddress.text != UserDefaults.standard.object(forKey: "D") as? String
        {
            displayMyAlertMessage(UserMessage: "Your Email does not match with your Profiles")
            return
        }
        
    performSegue(withIdentifier: "Pass", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ReceiptListVC {
            destination.Email = txtEmailAddress.text!
            destination.CarPNumber = txtCarPNumber.text!
            destination.CarComPaNy = txtCarCompany.text!
            destination.CarCoLor = txtCarColor.text!
            destination.NoOFHP = txtNoofHP.text!
            destination.PayMentA = txtPaymentA.text!
            destination.PayMentM = txtPaymentM.text!
            destination.SpotNUMBER  = txtSpotNumber.text!
            destination.LotNUMBER = txtLotNumber.text!
            destination.DATE = DATE.text
            //let RCListSB:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            //let RClistSV = RCListSB.instantiateViewController(withIdentifier: "ReceiptListScreen")
            //navigationController?.pushViewController(RClistSV, animated: true)
        }
    }
    func displayMyAlertMessage(UserMessage: String)
    {
        let MyAlert = UIAlertController(title: "Register", message: UserMessage, preferredStyle: UIAlertControllerStyle.alert);
        
        let Action = UIAlertAction(title: "Okey", style: UIAlertActionStyle.default, handler:nil)
        
        MyAlert.addAction(Action);
        self.present(MyAlert, animated: true, completion: nil)
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

