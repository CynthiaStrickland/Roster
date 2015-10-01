//
//  NewStudentViewController.swift
//  Roster
//
//  Created by Cynthia Whitlatch on 9/30/15.
//  Copyright © 2015 Cynthia Whitlatch. All rights reserved.
//

import UIKit

class NewStudentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
      title = "New Student"
      navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .Plain, target: self, action: "tappedDone:")
      
    }

  func tappedDone(sender : AnyObject!)  {
    
    
  }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
