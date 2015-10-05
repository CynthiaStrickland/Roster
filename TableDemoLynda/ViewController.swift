//
//  ViewController.swift
//  
//
//  Created by Cynthia Whitlatch on 9/19/15.
//  Copyright © 2015 Cynthia Whitlatch. All rights reserved.
//
import Foundation
import UIKit
import MessageUI
import Social

let photos = [Photo]()

var mRoster = [
  (firstName: "Jackson", lastName: "Chu", email: "jackson@gmail.com", imageName: "Fox300.jpg"),
  (firstName: "Alan", lastName: "Johnson", email: "alanjohnson@gmail.com", imageName: "Elephant300.jpg"),
  (firstName: "Antonio", lastName: "Garcia", email: "antoniogarcia@gmail.com", imageName: "Alligator300.jpg"),
  (firstName: "Francisco", lastName: "Ragland Jr", email: "franciscoragland@gmail.com", imageName: "panda300.jpg"),
  (firstName: "William", lastName: "Berry", email: "williamberry@gmail.com", imageName: "turtle300.jpg"),
  (firstName: "David", lastName: "Gardner", email: "dpgardner10@gmail.com", imageName: "Fox300.jpg"),
  (firstName: "Rob", lastName: "Hunsaker", email: "hunsaker.rob@gmail.com", imageName: "octopus300.jpg"),
  (firstName: "Van Allen", lastName: "Hurst", email: "vanallenhurst@gmail.com", imageName: "Racoon300.jpg"),
  (firstName: "Roman", lastName: "Salazar", email: "romansalazar@gmail.com", imageName: "Kangaroo300.jpg"),
  (firstName: "Vincent", lastName: "Smithers", email: "vincentsmithers@gmail.com", imageName: "Wolf300.jpg"),
  (firstName: "Brian", lastName: "Ward", email: "brianward@gmail.com", imageName: "Owl300.jpg"),
  (firstName: "Cooper", lastName: "Whitlow", email: "cooperwhitlow@gmail.com", imageName: "Octopus300.jpg")]

var fRoster = [
  (firstName: "Cynthia", lastName: "Whitlatch", email: "cawhitlatch2@gmail.com", imageName: "Lion300.jpg"),
  (firstName: "Ashley", lastName: "Johnson", email: "ashleyjohnson@gmail.com", imageName: "Turtle300.jpg"),
  (firstName: "Cynthia", lastName: "Soto", email: "cynthiasoto@gmail.com", imageName: "Zebra300.jpg"),
  (firstName: "Lindsey", lastName: "Boggio", email: "lindseyboggio@gmail.com", imageName: "Elephant300.jpg"),
  (firstName: "Lynn", lastName: "Kuhlman", email: "lynnkuhlman@gmail.com", imageName: "Fox300.jpg")]

class ViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
   
        // ***** Nav Title Image *******
    self.navigationController?.navigationBar
    let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
    imageView.contentMode = .ScaleAspectFit
    let image = UIImage(named: "codefellows")
    imageView.image = image
    navigationItem.titleView = imageView
    
  }
// MARK: -     TABLEVIEW METHODS
      //   DELETING STUDENT FROM TABLEVIEW BY SWIPING
  func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    return true
  }
      //   NEED THIS TO ADD SWIPE CELL TO SHARE/DELETE
  func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
    
    if editingStyle == UITableViewCellEditingStyle.Delete {
      mRoster.removeAtIndex(indexPath.row)
      tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
    }
  }
            // ************  SWIPE TO DELETE   ***********

  func tableView(tableView: UITableView!, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [AnyObject]! {
    
      let deleteAction = UITableViewRowAction(style: .Default, title: "Delete") { (action: UITableViewRowAction!, indexPath: NSIndexPath!) -> Void in
      _ = mRoster[indexPath.row]
      let activityViewController = UIActivityViewController(activityItems: ["Brad"], applicationActivities: nil)
      self.presentViewController(activityViewController, animated: true, completion: nil)
        }
      
      let shareAction = UITableViewRowAction(style: .Normal, title: "Share") { (action: UITableViewRowAction!, indexPath: NSIndexPath!) -> Void in
      _ = mRoster[indexPath.row]
      let activityViewController = UIActivityViewController(activityItems: ["Brad"], applicationActivities: nil)
      self.presentViewController(activityViewController, animated: true, completion: nil)
      }
      shareAction.backgroundColor = UIColor.blueColor()
      return [shareAction, deleteAction]
    }


      //   TITLE FOR HEADER
  func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    switch section {
    case 0:
      return "Male Students"
    default:
      return "Female Students"
    }
  }
  
  func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 2
  }

  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    if section == 0 {
      return mRoster.count
    } else if section == 1 {
      return fRoster.count
    }
      return 0
  }
  
   func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath:indexPath)
    
    if indexPath.section == 0 {
      let(firstName, lastName, email, _) = mRoster[indexPath.row]
          cell.textLabel?.text = "\(firstName) \(lastName)"
          cell.detailTextLabel?.text = "\(email)"
        } else {
          let(firstName, lastName, email, _) = fRoster[indexPath.row]
          cell.textLabel?.text = "\(firstName) \(lastName)"
          cell.detailTextLabel?.text = "\(email)"
    }
    return cell
}
  
// MARK: -       SEGUE
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == "detail" {

        let secondScene = segue.destinationViewController as! DetailViewController
        if let indexPath = self.tableView.indexPathForSelectedRow {
        let selectedPhoto = photos[indexPath.row]
          
//        secondScene.currentPhoto = selectedPhoto
      }
    }
//          
//      let detailVC = segue.destinationViewController as! DetailViewController
//      
//      let selectedIndexPath = self.tableView.indexPathForSelectedRow
//      let selectedRow = selectedIndexPath!.row
//      let selectedPhoto = mRoster[selectedRow].imageName
//      detailVC.selectedPhoto = selectedPhoto
      
//      let selectedIndexPath = self.tableView.indexPathForSelectedRow
//      let selectedRow = selectedIndexPath!.row
//      let roster = mRoster[selectedRow]
//      detailVC.roster = roster
      
//    } else if segue.identifier == "newstudent" {
//      
//    var newStudentScene = segue.destinationViewController as! NewStudentViewController
//      }
    }
  }







//      secondScene.selectedName = "Brad"
//      let selectedIndexPath = tableView.indexPathForSelectedRow
//      let selectedRow = selectedIndexPath!.row
//      let selectedName = names[selectedRow]
//      secondScene.view.backgroundColor = UIColor.greenColor()

// *********  DID SELECT ROW AT INDEX ****  Segue for Tuples
//  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//    let (firstName, lastName, emailRoster) = maleRoster[indexPath.row]
//    performSegueWithIdentifier("detail", sender: nil)
//   let destinationViewController = destinationViewController as! DetailViewController


//            //***** SET NAVIGATION BAR BUTTON PROGRAMMATICALLY
//    navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Share", style: .Plain, target: self, action: "tappedShare:")


//             // ******** METHOD TO HANDLE SHARE BUTTON -  FACEBOOK .. image, initial text & URL
//  func tappedShare(sender : AnyObject!) {
//    let composeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
//    composeViewController.addImage(UIImage(named: "codefellows30"))
//    composeViewController.setInitialText("Check out Code Fellows")
//    composeViewController.addURL(NSURL(string: "http://www.codefellows.com"))
//
//    presentViewController(composeViewController, animated: true, completion:nil)
//    vc.setInitialText("Look at this great picture!")
//    vc.addImage(detailImageView.image!)
//    vc.addURL(NSURL(string: "http://www.photolib.noaa.gov/nssl"))
//  }

















