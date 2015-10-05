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
    
    let newFirstName = NSUserDefaults.standardUserDefaults()
    newFirstName.text = newFirstName.stringArrayForKey("savedFirstName")
    newLastName.text = newLastName.stringArrayForKey("savedLastName")
    newEmail.text = newEmail.stringArrayForKey("savedEmail")
    
      
  }
  
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
    
    
    
  }
  
  
}
//  func save()
//  NSUserDefaults.standardUserDefaults().setObject(value: objects, forKey: "")
//  NSUserDefaults.standardUserDefaults().synchronize()
//}

//  func loadData()
//  if let loadedData = NSUserDefaults.standardUserDefaults().arrayForKey(defaultName: String) as? [String] {
//  object = loadedData
//}

