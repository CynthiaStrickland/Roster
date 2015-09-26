//  DetailViewController.swift
//
//  Created by Cynthia Whitlatch on 9/19/15.
//  Copyright © 2015 Cynthia Whitlatch. All rights reserved.
//

import UIKit
import MessageUI

var currentPhoto : Photo?

class DetailViewController: UIViewController {
  
  @IBOutlet weak var studentImage: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let image = UIImage(named: currentPhoto!.filename)
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
  /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */



