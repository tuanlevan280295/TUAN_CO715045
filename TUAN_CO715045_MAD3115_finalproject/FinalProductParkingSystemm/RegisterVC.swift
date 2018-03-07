//
//  RegisterVC.swift
//  FinalProductParkingSystemm
//
//  Created by levantuan on 2018-02-27.
//  Copyright © 2018 levantuan. All rights reserved.
//

import UIKit

class RegisterVC: UIViewController {
    
    
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var lbPNumber: UILabel!
    @IBOutlet weak var txtPNumber: UITextField!
    
    
    @IBOutlet weak var RegisterLBEmail: UILabel!
    @IBOutlet weak var RegisterTXTEmail: UITextField!
    
    
    @IBOutlet weak var RegisterLBPassword: UILabel!
    @IBOutlet weak var RegisterTXTPassword: UITextField!
    
    
    @IBOutlet weak var RegisterLBRepeatPassword: UILabel!
    @IBOutlet weak var RegisterTXTRepeatPassword: UITextField!
    
    
    @IBOutlet weak var lbCarPlateNumber: UILabel!
    @IBOutlet weak var txtCarPlateNumber: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonConfirm(_ sender: UIButton) {

        self.PassingRegisterData()
        
        //self.writePropertyList()
        let UserEmail = txtName.text;
        let UserPassword = RegisterTXTPassword.text;
        let UserRepeatPassword = RegisterTXTRepeatPassword.text;
        let UserName = txtName.text;
        let UserPhoneNumber = txtPNumber.text;
        let UserCarPlateNumber = txtCarPlateNumber.text;
        
        
        //Checking for empty field
        if((UserEmail?.isEmpty)! || (UserPassword?.isEmpty)! || (UserRepeatPassword?.isEmpty)! || (UserName?.isEmpty)! || (UserPhoneNumber?.isEmpty)! ||
            (UserCarPlateNumber?.isEmpty)!)
            
            
            
        {
            displayMyAlertMessage(UserMessage: "The field are required")
            //Display message
            return
            
        }
        
        
        //checking if password match each other.
        if (UserPassword != UserRepeatPassword)
        {
            displayMyAlertMessage(UserMessage: "The Field do not match")
            return
            
            
        }
        
        
        //stored the data saving
        UserDefaults.standard.set(UserEmail, forKey: "UREmail");
        UserDefaults.standard.set(UserPassword, forKey: "URPassword");
        //display
        let MyAlert = UIAlertController(title: "Register secceeded", message: "Welcome to 'Goone Parking'", preferredStyle: .alert);
        MyAlert.addAction(UIAlertAction(title: "Okey", style: .default, handler: {_ in (self.displayLogin())}))
        self.present(MyAlert, animated: true, completion: nil)
        
       /* let Action = UIAlertAction(title: "Okey", style: .default)
        {
            
            Action in
            self.dismiss(animated: true, completion: nil)
         }

        
        MyAlert.addAction(Action)
        self.present(MyAlert, animated: true, completion: nil)
 */
 
    }
    
    //FUNC display
    func displayMyAlertMessage(UserMessage: String)
    {
        let MyAlert = UIAlertController(title: "Register", message: UserMessage, preferredStyle: UIAlertControllerStyle.alert);
        
        let Action = UIAlertAction(title: "Okey", style: UIAlertActionStyle.default, handler:nil)
        
        MyAlert.addAction(Action);
        self.present(MyAlert, animated: true, completion: nil)
        
    }
    func displayLogin() {
        
            let loginSB:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let loginVC = loginSB.instantiateViewController(withIdentifier: "LoginScreen") as! LoginVC
            
            navigationController?.pushViewController(loginVC, animated: true)
            
    }
    func PassingRegisterData() {
        if((RegisterTXTEmail.text?.isEmpty)! || (RegisterTXTPassword.text?.isEmpty)! || (RegisterTXTRepeatPassword.text?.isEmpty)! || (txtName.text?.isEmpty)! || (txtPNumber.text?.isEmpty)! ||
            (txtCarPlateNumber.text?.isEmpty)!)
            
            
            
        {
            displayMyAlertMessage(UserMessage: "The field are required")
            //Display message
            return
            
        }
        performSegue(withIdentifier: "PassData", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? Profiles {
            destination.Name = txtName.text!
            destination.PhoneNumber = txtPNumber.text!
            destination.CarPlateNumber = txtCarPlateNumber.text!
            destination.UserEmail = RegisterTXTEmail.text!
            destination.Password = RegisterTXTPassword.text!
    }
    
    //save data on listt
    /*
    func writePropertyList()
    {
        let UserList = NSMutableDictionary()
        UserList["Name"] = self.txtName.text
        UserList["Number"] = self.txtPNumber.text
        UserList["Plate"] = self.txtCarPlateNumber.text
        UserList["Email"] = self.RegisterTXTEmail.text
        if let plistPath = Bundle.main.path(forResource: "ProfilesList", ofType: "plist"){
            let myPlist = NSMutableArray(contentsOfFile: plistPath)
            myPlist?.add(UserList)
            if (myPlist?.write(toFile: plistPath, atomically: true))!{
                print("myPlist : \(String(describing: myPlist))")
            }
            
        }else{
            print("Unable to locate plist file")
        }
 */
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
