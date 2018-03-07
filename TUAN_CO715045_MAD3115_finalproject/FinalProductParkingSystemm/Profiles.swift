//
//  Profiles.swift
//  FinalProductParkingSystemm
//
//  Created by levantuan on 2018-03-02.
//  Copyright © 2018 levantuan. All rights reserved.
//

import UIKit

class Profiles: UIViewController {
    //values for Register
    var Name: String?
    var PhoneNumber: String?
    var CarPlateNumber: String?
    var UserEmail: String?
    var Password: String?
    //values for update
    var Address: String?
    var YearOld: String?
    var Job: String?
    
    
    
    //identify for Register
    @IBOutlet weak var one: UILabel!
    @IBOutlet weak var two: UILabel!
    @IBOutlet weak var three: UILabel!
    @IBOutlet weak var four: UILabel!
    @IBOutlet weak var five: UILabel!
    //identify for update
    
    @IBOutlet weak var update1: UILabel!
    @IBOutlet weak var update2: UILabel!
    @IBOutlet weak var update3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let UD1 = Address
        {
            update1.text = UD1
            UserDefaults.standard.set(Address, forKey: "address")
            let UD2 = YearOld
            update2.text = UD2
            UserDefaults.standard.set(YearOld, forKey: "yearold")
            let UD3 = Job
            update3.text = UD3
            UserDefaults.standard.set(Job, forKey: "job")
            
        
        }
        if let display = Name{
            one.text = display
            UserDefaults.standard.set(Name, forKey: "A")
            let display1 = PhoneNumber
            two.text = display1
            UserDefaults.standard.set(PhoneNumber, forKey: "B")
            let display2 = CarPlateNumber
            three.text = display2
            UserDefaults.standard.set(CarPlateNumber, forKey: "C")
            let display3 = UserEmail
            four.text = display3
            UserDefaults.standard.set(UserEmail, forKey: "D")
            let display4 = Password
            five.text = display4
            UserDefaults.standard.set(Password, forKey: "E")
            
        }
    
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        // For Register
        if  let a = UserDefaults.standard.object(forKey: "A") as? String
        {
            one.text = a
        }
        if let b = UserDefaults.standard.object(forKey: "B") as? String
        {
            two.text = b
        }
        if let c = UserDefaults.standard.object(forKey: "C") as? String
        {
            three.text = c
        }
        if let d = UserDefaults.standard.object(forKey: "D") as? String
        {
            four.text = d
        }
        if let e = UserDefaults.standard.object(forKey: "E") as? String
        {
            five.text = e
        }
        // For Update
        if let u1 = UserDefaults.standard.object(forKey: "address") as? String
        {
            update1.text = u1
        }
        if let u2 = UserDefaults.standard.object(forKey: "yearold") as? String
        {
            update2.text = u2
        }
        if let u3 = UserDefaults.standard.object(forKey: "job") as? String
        {
            update3.text = u3
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Menu(_ sender: UIButton) {
        let displayMenuSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let displayMenuSV = displayMenuSB.instantiateViewController(withIdentifier: "MenuScreen")
        navigationController?.pushViewController(displayMenuSV, animated: true)
    }
    
    @IBAction func ButtonAction(_ sender: UIButton) {
        displayList()
    }
    func displayList() {
        
        let listSB:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let listSV = listSB.instantiateViewController(withIdentifier: "ListScreen")
        
        navigationController?.pushViewController(listSV, animated: true)
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
