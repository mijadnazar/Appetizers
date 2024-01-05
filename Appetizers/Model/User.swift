//
//  User.swift
//  Appetizers
//
//  Created by Mehdi Ijadnazar on 10/14/1402 AP.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthDate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
