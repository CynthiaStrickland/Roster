//
//  NewStudentViewController.swift
//  Roster
//
//  Created by Cynthia Whitlatch on 9/30/15.
//  Copyright © 2015 Cynthia Whitlatch. All rights reserved.
//

import UIKit

class NewStudentViewController: UIViewController {

  var firstName = ""
  var lastName = ""
  var email = ""
  
  @IBOutlet weak var male: UISwitch!
  @IBOutlet weak var female: UISwitch!
  
  @IBAction func cancelBarButton(sender: AnyObject) {
//    dismissViewControllerAnimated(flag: true, completion: nil)
  }
  
  @IBAction func doneBarButton(sender: AnyObject) {
    
  }
  
  override func viewDidLoad() {
      super.viewDidLoad()
      
  }
  
//      navigationItem.title = "New Student"
//      navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .Plain, target: self, action: "tappedDone:")
//      @IBAction func cancelToPlayersViewController(segue:UIStoryboardSegue) {
//        
//      }
//      navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .Plain, target: self, action: "tappedCancel:")
//      


//  func tappedDone(sender : AnyObject!)  {
//      
//    
//  }
//  
//  func tappedCancel(sender: AnyObject!) {
//    
//  }
  }

