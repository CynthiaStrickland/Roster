//
//  Person.swift
//  Roster
//
//  Created by Cynthia Whitlatch on 9/30/15.
//  Copyright © 2015 Cynthia Whitlatch. All rights reserved.
//

import Foundation

class Person {
  var firstName: String
  var lastName: String
  
  init(studentsFirstName: String, studentsLastName: String) {
    firstName = studentsFirstName
    lastName = studentsLastName
  }
}