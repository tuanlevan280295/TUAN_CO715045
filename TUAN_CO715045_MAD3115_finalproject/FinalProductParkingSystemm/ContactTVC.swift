//
//  ContactTVC.swift
//  FinalProductParkingSystemm
//
//  Created by levantuan on 2018-03-06.
//  Copyright © 2018 levantuan. All rights reserved.
//

import UIKit
import Contacts

struct myContacts{
    var givenName: String
    var familyName: String
    var phoneNo: String
    var emailID: String
}

class ContactTVC: UITableViewController {
    
    var myContactStore = CNContactStore()
    var myContactList = [myContacts]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 70
        
        myContactStore.requestAccess(for: .contacts){
            (success, error) in
            if success{
                print("Authorization Successful")
            }
        }
        
        self.fetchContacts()
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
        return myContactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath) as! ContactsCell
        
        // Configure the cell...
        cell.contactTitle.text = "\(myContactList[indexPath.row].givenName)  \(myContactList[indexPath.row].familyName)"
        cell.contactSubtitle.text = myContactList[indexPath.row].phoneNo
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailSB = UIStoryboard(name: "Main", bundle: nil)
        let detailVC = detailSB.instantiateViewController(withIdentifier: "ContactDetailScreen") as! ContactDetailVC
        
        detailVC.contactName = "\(myContactList[indexPath.row].givenName)  \(myContactList[indexPath.row].familyName)"
        detailVC.contactNumber = myContactList[indexPath.row].phoneNo
        detailVC.contactEmail = myContactList[indexPath.row].emailID
        self.navigationController?.pushViewController(detailVC, animated: true)
        
    }
    
    func fetchContacts(){
        let key = [CNContactGivenNameKey, CNContactFamilyNameKey,CNContactPhoneNumbersKey,CNContactEmailAddressesKey] as [CNKeyDescriptor]
        
        let request = CNContactFetchRequest(keysToFetch: key)
        
        try!myContactStore.enumerateContacts(with: request) {
            (contact, stoppingPointer) in
            
            //print("cONTACT : \(contact)")
            let givenName = contact.givenName as String
            let familyName = contact.familyName as String
            
            var phoneNo = ""
            if (!contact.phoneNumbers.isEmpty){
                phoneNo = contact.phoneNumbers[0].value.stringValue
            }
            
            var emailID = ""
            if (!contact.emailAddresses.isEmpty){
                emailID = contact.emailAddresses[0].value as String
            }
            self.myContactList.append(myContacts(givenName: givenName, familyName: familyName, phoneNo: phoneNo, emailID: emailID))
        }
        self.tableView.reloadData()
    }
}

