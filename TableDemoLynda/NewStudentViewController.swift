//
//  NewStudentViewController.swift
//  Roster
//
//  Created by Cynthia Whitlatch on 9/30/15.
//  Copyright © 2015 Cynthia Whitlatch. All rights reserved.
//

import UIKit
import Foundation


class NewStudentViewController: UIViewController {

  var firstName = ""
  var lastName = ""
  var email = ""
  
  @IBOutlet weak var newFirstName: UITextField!
  @IBOutlet weak var newEmail: UITextField!
  @IBOutlet weak var newLastName: UITextField!
  
  @IBOutlet weak var male: UISwitch!
  @IBOutlet weak var female: UISwitch!
  
  override func viewDidLoad() {
      super.viewDidLoad()
  }
  
  func buttonClicked(sender: AnyObject) {
    if mySwitch.on {
      
      mySwitch.setOn(false, animated:true)
      mRoster.append(firstName: newFirstName)
      mRoster.append(lastName: newLastName)
      mRoster.append(email: newEmail)
      
    } else {
      
      mySwitch.setOn(true, animated:true)
      fRoster.append(firstName: newFirstNAme)
      fRoster.append(lastName: newLastName)
      fRoster.append(email: newEmail)
    }

  func buttonClicked(sender: AnyObject) {

  
  @IBAction func saveData(sender: AnyObject) {
    let firstNameText = newFirstName.text
    let lastNameText = newLastName.text
    let emailText = newEmail.text
    
    NSUserDefaults.standardUserDefaults().setObject(firstNameText, forKey: "savedFirstName")
    NSUserDefaults.standardUserDefaults().setObject(lastNameText, forKey: "savedLastName")
    NSUserDefaults.standardUserDefaults().setObject(emailText, forKey: "savedEmail")
    NSUserDefaults.standardUserDefaults().synchronize()
    
    let alert = UIAlertController(title: "Saved", message: "Your text has been saved", preferredStyle: .Alert)
    alert.addAction(UIAlertAction(title: "Ok", style: .Cancel, handler: nil))
    self.presentViewController(alert, animated: true, completion: nil)
    
  }
}


