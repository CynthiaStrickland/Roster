//  DetailViewController.swift
//
//  Created by Cynthia Whitlatch on 9/19/15.
//  Copyright © 2015 Cynthia Whitlatch. All rights reserved.
//

import UIKit
import MessageUI



class DetailViewController: UIViewController {
  
  var selectedFirstName = "None"
  var selectedLastName = "None"
  var selectedPhoto : Photo?
  var currentPhoto : Photo?

  @IBOutlet weak var firstName: UILabel!
  @IBOutlet weak var lastName: UILabel!
  @IBOutlet weak var studentImage: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    firstName.text = selectedFirstName
    lastName.text = selectedLastName
    
    let image = UIImage(named: currentPhoto!.filename)    //creating a property to hold image
    studentImage.image = image
   
    self.title = currentPhoto!.name
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  @IBAction func sendMessage(sender: UIButton) {
    let messageVC = MFMessageComposeViewController()
    messageVC.recipients = []
    messageVC.messageComposeDelegate = self
    
    self.presentViewController(messageVC, animated: true, completion: nil)
  }  
}

extension DetailViewController: MFMessageComposeViewControllerDelegate {
  func messageComposeViewController(controller: MFMessageComposeViewController, didFinishWithResult result: MessageComposeResult) {
    switch (result.rawValue) {
    case MessageComposeResultCancelled.rawValue:
      print("Message was cancelled")
      self.dismissViewControllerAnimated(true, completion: nil)
    case MessageComposeResultFailed.rawValue:
      print("Message failed")
      self.dismissViewControllerAnimated(true, completion: nil)
    case MessageComposeResultSent.rawValue:
      print("Message was sent")
      self.dismissViewControllerAnimated(true, completion: nil)
    default:
      break;
    }
  }
}




