//
//  ViewController.swift
//  FinalProductParkingSystemm
//
//  Created by levantuan on 2018-02-27.
//  Copyright © 2018 levantuan. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    
    @IBOutlet weak var lbEmail: UILabel!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var lbPassWord: UILabel!
    @IBOutlet weak var txtPassWord: UITextField!    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
///REGISTER BUTTON
    
    @IBAction func buttonRegister(_ sender: UIButton) {
        let registerSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let registerVC = registerSB.instantiateViewController(withIdentifier: "RegisterScreen")
        
        
        
        navigationController?.pushViewController(registerVC, animated: true)
    }
    
    ///LOGIN BUTTON
    
    
    @IBAction func buttonLogin(_ sender: UIButton) {
        if txtPassWord.text != UserDefaults.standard.object(forKey: "E") as? String
        {
            displayMyAlertMessage(UserMessage: "Email or Password uncorrect")
            return
        }
        if txtEmail.text != UserDefaults.standard.object(forKey: "D") as? String
        {
            displayMyAlertMessage(UserMessage: "Email or Password uncorrect")
            return
        }
        
        performSegue(withIdentifier: "PassLogin", sender: self)
       /* if authenicateUser(){
            let infoAlert = UIAlertController(title: "Succeeded", message: "Please select confirm to display menu", preferredStyle: .alert)
            
            //add Retry button
            infoAlert.addAction(UIAlertAction(title: NSLocalizedString("Confirm", comment: "Default action"), style: .destructive, handler: {_ in self.display()}))
            
            //display an alert
            self.present(infoAlert, animated: true, completion: nil)
        }
        else{
            //get an instance of AlertController
            let infoAlert = UIAlertController(title: "Incorrect Data", message: "Email or Password incorrect...Please retry", preferredStyle: .alert)
            
            //add Retry button
            infoAlert.addAction(UIAlertAction(title: NSLocalizedString("Retry", comment: "Default action"), style: .destructive, handler: nil))
            
            //display an alert
            self.present(infoAlert, animated: true, completion: nil)
        }
 */
        /*
        let email = txtEmail.text;
        let password = txtPassWord.text;
    
        
        let StoreEmail = UserDefaults.standard.string(forKey: "UREmail")
        let StorePassword = UserDefaults.standard.string(forKey: "URPassword")
        
        
        
        if (email == StoreEmail && password == StorePassword)
            {
                UserDefaults.standard.set(true, forKey: "isUserLogin")
                UserDefaults.standard.synchronize()
                self.dismiss(animated: true, completion: nil)
            }
        
        
        
        
        let infoAlert = UIAlertController(title: "", message: "Your ID or Password not corect", preferredStyle: .alert)
        
        infoAlert.addAction(UIAlertAction(title: "Okey", style: .default, handler: nil))
        self.present(infoAlert, animated: true, completion: nil)
 */

        
    }
    func display(){
        let menuSB:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let menuVC = menuSB.instantiateViewController(withIdentifier: "MenuScreen")
        
        navigationController?.pushViewController(menuVC, animated: true)
        
    }
    func displayMyAlertMessage(UserMessage: String)
    {
        let MyAlert = UIAlertController(title: "Register", message: UserMessage, preferredStyle: UIAlertControllerStyle.alert);
        
        let Action = UIAlertAction(title: "Okey", style: UIAlertActionStyle.default, handler:nil)
        
        MyAlert.addAction(Action);
        self.present(MyAlert, animated: true, completion: nil)
    }
    
    
  /*
    func authenicateUser() -> Bool{
        
        if (txtEmail.text == "tuan@gmail.com" && txtPassWord.text == "tuan"){
            return true
            
        }
        else{
            return false
        }
 */
}



