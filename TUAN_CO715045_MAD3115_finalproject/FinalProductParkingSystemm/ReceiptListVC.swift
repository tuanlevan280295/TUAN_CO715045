//
//  ReceiptListVC.swift
//  FinalProductParkingSystemm
//
//  Created by levantuan on 2018-03-06.
//  Copyright © 2018 levantuan. All rights reserved.
//

import UIKit

class ReceiptListVC: UIViewController {
    // PDF's name of MP4
    let PDFtitle = "T41-1-63-eng"
    
    //
    var Email: String?
    var CarPNumber: String?
    var CarComPaNy: String?
    var CarCoLor: String?
    var NoOFHP: String?
    var PayMentA: String?
    var PayMentM: String?
    var SpotNUMBER: String?
    var LotNUMBER: String?
    var DATE: String?
    
    
    @IBOutlet weak var One: UILabel!
    @IBOutlet weak var Two: UILabel!
    @IBOutlet weak var Three: UILabel!
    @IBOutlet weak var Four: UILabel!
    @IBOutlet weak var Five: UILabel!
    @IBOutlet weak var Six: UILabel!
    @IBOutlet weak var Seven: UILabel!
    @IBOutlet weak var Eight: UILabel!
    @IBOutlet weak var Nine: UILabel!
    @IBOutlet weak var Ten: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        //Store DATA FROM ReiceipVC
        if let nameDisplay = Email {
            One.text = nameDisplay
            UserDefaults.standard.set(Email, forKey: "1")
            let nameDisplay1 = CarPNumber
            Two.text = nameDisplay1
            UserDefaults.standard.set(CarPNumber, forKey: "2")
            let nameDisplay2 = CarComPaNy
           Three.text = nameDisplay2
            UserDefaults.standard.set(CarComPaNy, forKey: "3")
            let nameDisplay3 = CarCoLor
            Four.text = nameDisplay3
            UserDefaults.standard.set(CarCoLor, forKey: "4")
            let nameDisplay4 = NoOFHP
            Five.text = nameDisplay4
            UserDefaults.standard.set(NoOFHP, forKey: "5")
            let nameDisplay5 = PayMentA
           Six.text = nameDisplay5
            UserDefaults.standard.set(PayMentA, forKey: "6")
            let  nameDisplay6 = PayMentM
            Seven.text = nameDisplay6
            UserDefaults.standard.set(PayMentM, forKey: "7")
            let nameDisplay7 = SpotNUMBER
           Eight.text = nameDisplay7
            UserDefaults.standard.set(SpotNUMBER, forKey: "8")
            let nameDisplay8 = LotNUMBER
           Nine.text = nameDisplay8
            UserDefaults.standard.set(LotNUMBER, forKey: "9")
            let nameDisplay9 = DATE
           Ten.text = nameDisplay9
            UserDefaults.standard.set(DATE, forKey: "10")
            //UserDefaults.standard.set(Email, forKey: "1")
            //Email = ""
        
        }
        // Do any additional setup after loading the view.
    }
    //SAVE DATA
    override func viewWillAppear(_ animated: Bool) {
        if  let a = UserDefaults.standard.object(forKey: "1") as? String{
            One.text = a
        }
        if let b = UserDefaults.standard.object(forKey: "2") as? String
        {
            Two.text = b
        }
            
        if  let c = UserDefaults.standard.object(forKey: "3") as? String
        {
            Three.text = c
        }
        if let d = UserDefaults.standard.object(forKey: "4") as? String
        {
            Four.text = d
        }
        if let e = UserDefaults.standard.object(forKey: "5") as? String
        {
            Five.text = e
        }
        if let f = UserDefaults.standard.object(forKey: "6") as? String
        {
            Six.text = f
        }
        if let h = UserDefaults.standard.object(forKey: "7") as? String
        {
            Seven.text = h
        }
        if let g = UserDefaults.standard.object(forKey: "8") as? String
        {
            Eight.text = g
        }
        if let r = UserDefaults.standard.object(forKey: "9") as? String
        {
            Nine.text = r
        }
        if let t = UserDefaults.standard.object(forKey: "10") as? String
        {
            Ten.text = t
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    
        
    }
    
    @IBAction func ReturnMenuAction(_ sender: UIButton) {
   
        let backMenuSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let backMenuSV = backMenuSB.instantiateViewController(withIdentifier: "MenuScreen")
        navigationController?.pushViewController(backMenuSV, animated: true)
    }
    @IBAction func OpenPDF(_ sender: UIBarButtonItem) {
        if let url = Bundle.main.url(forResource: PDFtitle, withExtension: "pdf") {
            let webview = UIWebView(frame: self.view.frame)
            let urlRequest = URLRequest(url: url)
            webview.loadRequest(urlRequest as URLRequest)
        self.view.addSubview(webview)
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
}
