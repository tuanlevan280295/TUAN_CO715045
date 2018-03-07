//
//  MenuVCTableViewController.swift
//  FinalProductParkingSystemm
//
//  Created by levantuan on 2018-03-01.
//  Copyright © 2018 levantuan. All rights reserved.
//

import UIKit

class MenuVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 8
        
    
    }
    
    @IBAction func Report(_ sender: UIButton) {
        let reportSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let reportSV = reportSB.instantiateViewController(withIdentifier: "ReportScreen")
        navigationController?.pushViewController(reportSV, animated: true)
    }
    @IBAction func Manual(_ sender: UIButton) {
        let manualSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let manualSV = manualSB.instantiateViewController(withIdentifier: "TabBarScreen")
        navigationController?.pushViewController(manualSV, animated: true)
    }
    @IBAction func Reciept(_ sender: UIButton) {
        displayReceipt()
    }
    
    @IBAction func Support(_ sender: UIButton) {
        displaySupport()
    }
    
    @IBAction func Location(_ sender: UIButton) {
        displayLocation()
    }
    
    @IBAction func Profiles(_ sender: UIButton) {
        displayProfiles()
    }
    func displayProfiles() {
        let profileSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let profileVC = profileSB.instantiateViewController(withIdentifier: "ProfilesScreen")
        navigationController?.pushViewController(profileVC, animated: true)
    }
    func displayLocation() {
        let locationSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let locationVC = locationSB.instantiateViewController(withIdentifier: "mapScreen")
        navigationController?.pushViewController(locationVC, animated: true)
    }
    func displaySupport() {
        let supportSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let supportSV = supportSB.instantiateViewController(withIdentifier: "ContactScreen")
        navigationController?.pushViewController(supportSV, animated: true)
    }
    
    //LOG OUT
    
    @IBAction func Logout(_ sender: UIButton) {
    
        let logoutSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let logoutVC = logoutSB.instantiateViewController(withIdentifier: "LoginScreen")
        navigationController?.pushViewController(logoutVC, animated: true)
    }
    func displayReceipt() {
        let receiptSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let receiptSV = receiptSB.instantiateViewController(withIdentifier: "receiptScreen")
        navigationController?.pushViewController(receiptSV, animated: true)
}
}

 
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
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

