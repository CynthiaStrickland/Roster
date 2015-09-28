//
//  ViewController.swift
//  
//
//  Created by Cynthia Whitlatch on 9/19/15.
//  Copyright © 2015 Cynthia Whitlatch. All rights reserved.
//

import UIKit
import MessageUI

struct Photo {
  var name : String
  var filename : String
}

var photos = [Photo]()

let maleRoster = [
  ("Jackson Chu", "jackson@gmail.com"),
  ("Alan", "alan@gmail.com"),
  ("Antonio Garcia", "antoniogarcia@gmail.com"),
  ("Francisco Ragland Jr", "franciscoragland@gmail.com"),
  ("William Berry", "williamberry@gmail.com"),
  ("David Gardner", "dpgardner10@gmail.com"),
  ("Rob Hunsaker", "hunsaker.rob@gmail.com"),
  ("Van Allen Hurst", "vanallenhurst@gmail.com"),
  ("Roman Salazard", "romansalazar@gmail.com"),
  ("Vincent Smithers", "vincentsmithers@gmail.com"),
  ("Brian Ward", "brianward@gmail.com"),
  ("Cooper Whitlow", "cooperwhitlow@gmail.com")
]

let femaleRoster = [
  ("Cynthia Whitlatch", "cawhitlatch2@gmail.com"),
  ("Ashley Johnson", "ashleyjohnson@gmail.com"),
  ("Cynthia Soto", "cynthiasoto@gmail.com"),
  ("Lindsey Boggio", "lindseyboggio@gmail.com"),
  ("Lynn Kuhlman", "lynnkuhlman@gmail.com")
]

class ViewController: UIViewController, UITableViewDataSource {
  
  @IBOutlet weak var tableView: UITableView!
  
  @IBOutlet weak var label: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()
    
        // ***** Nav Title Image *******
    self.navigationController?.navigationBar
    let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
    imageView.contentMode = .ScaleAspectFit
    let image = UIImage(named: "codefellows")
    imageView.image = image
    navigationItem.titleView = imageView
    
    var newPhoto = Photo(name:"Fox", filename:"fox300.jpg")
    photos.append(newPhoto)
    
    newPhoto = Photo(name:"Lion", filename:"lion300.jpg")
    photos.append(newPhoto)
    
    newPhoto = Photo(name:"Panda", filename:"panda300.jpg")
    photos.append(newPhoto)
    
    newPhoto = Photo(name:"Tarseir", filename:"tarseir300.jpg")
    photos.append(newPhoto)
    
    newPhoto = Photo(name:"Turtle", filename:"turtle300.jpg")
    photos.append(newPhoto)
    
    newPhoto = Photo(name:"Octopus", filename:"octopus300.jpg")
    photos.append(newPhoto)
    
    newPhoto = Photo(name:"Owl", filename:"owl300.jpg")
    photos.append(newPhoto)
    
    newPhoto = Photo(name:"Wolf", filename:"wolf300.jpg")
    photos.append(newPhoto)
    
    newPhoto = Photo(name:"Zebra", filename:"zebra300.jpg")
    photos.append(newPhoto)
    
    newPhoto = Photo(name:"Elephan", filename:"elephant300.jpg")
    photos.append(newPhoto)
    
    newPhoto = Photo(name:"Racoon", filename:"racoon300.jpg")
    photos.append(newPhoto)
    
    newPhoto = Photo(name:"Kangaroo", filename:"kangaroo300.jpg")
    photos.append(newPhoto)
    
    newPhoto = Photo(name:"Alligator", filename:"alligator300.jpg")
    photos.append(newPhoto)
  }
  
  func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 2
  }

  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    if section == 0 {
      
      return maleRoster.count
      
    } else if section == 1 {
      
      return femaleRoster.count
    }
  }
  
  func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
      if section == 0 {
        label.text = "Male Students"
        label.textColor = UIColor.blueColor()
      } else if section == 1 {
        label.text = "Female Students"
        label.textColor = UIColor.blueColor()
      }
        return label.text
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
      
      let currentPhoto = photos[indexPath.row]
      cell.textLabel?.text = currentPhoto.name
    }
    return cell
  }
}

  func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
      let secondScene = segue.destinationViewController as! DetailViewController
      if let indexPath = self.tableView.indexPathForSelectedRow {
        let selectedPhoto = photos[indexPath.row]
        secondScene.currentPhoto = selectedPhoto
  }



























