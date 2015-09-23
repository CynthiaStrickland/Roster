//
//  ViewController.swift
//  
//
//  Created by Cynthia Whitlatch on 9/19/15.
//  Copyright © 2015 Cynthia Whitlatch. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController, UITableViewDataSource {
  
  let maleRoster = [
    ("Jackson Chu", "jackson@gmail.com"),
    ("Alan", "alan@gmail.com"),
    ("Antonio Garcia", "antoniogarcia@gmail.com"),
    ("Francisco Ragland Jr", "franciscoragland@gmail.com"),
    ("William Berry", "williamberry@gmail.com")]

  
  let femaleRoster = [
    ("Cynthia Whitlatch", "cawhitlatch2@gmail.com"),
    ("Ashley Johnson", "ashleyjohnson@gmail.com"),
    ("Cynthia Soto", "cynthiasoto@gmail.com")]

  
  func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 2
  }

  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    if section == 0 {
      
      return maleRoster.count
      
    } else {
      
      return femaleRoster.count
    }
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath:indexPath)
    
    if indexPath.section == 0 {
      let(nameRoster,emailRoster) = maleRoster[indexPath.row]
      cell.textLabel?.text = nameRoster
      cell.detailTextLabel?.text = emailRoster

    } else {
      let(nameRoster,emailRoster) = femaleRoster[indexPath.row]
      cell.textLabel?.text = nameRoster
      cell.detailTextLabel?.text = emailRoster
    }
      return cell
    //test
  }
  
  func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    if section == 0 {
      
      return "Male Students"
    } else {
      return "Female Students"
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.navigationController?.navigationBar
    let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
    imageView.contentMode = .ScaleAspectFit
    let image = UIImage(named: "codefellows")
    imageView.image = image
    navigationItem.titleView = imageView
    
  }
}















