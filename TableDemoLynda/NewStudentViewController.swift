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

  var firstName: String?
  var lastName:  String?
  var email: String?
  var gender: String?
  
  @IBOutlet weak var newFirstName: UITextField!
  @IBOutlet weak var newEmail: UITextField!
  @IBOutlet weak var newLastName: UITextField!
  @IBOutlet weak var genderTextField: UITextField!

 
  @IBAction func saveData(sender: AnyObject) {
    
    let firstNameText = newFirstName.text
    let lastNameText = newLastName.text
    let emailText = newEmail.text
    let genderText = genderTextField.text
    
    NSUserDefaults.standardUserDefaults().setObject(firstNameText, forKey: "savedFirstName")
    NSUserDefaults.standardUserDefaults().setObject(lastNameText, forKey: "savedLastName")
    NSUserDefaults.standardUserDefaults().setObject(emailText, forKey: "savedEmail")
    NSUserDefaults.standardUserDefaults().setObject(genderText, forKey: "savedGender")
    NSUserDefaults.standardUserDefaults().synchronize()
    
    let alert = UIAlertController(title: "Saved", message: "Your text has been saved", preferredStyle: .Alert)
    alert.addAction(UIAlertAction(title: "Ok", style: .Cancel, handler: nil))
    self.presentViewController(alert, animated: true, completion: nil)
    
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
    // ******* This will resign the keyboard if screen is touched
  override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
    self.view.endEditing(true)
  }
  
}


