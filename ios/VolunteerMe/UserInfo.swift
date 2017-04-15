//
//  UserInfo.swift
//  VolunteerMe
//
//  Created by Pei Liu on 4/14/17.
//  Copyright © 2017 Pei Liu. All rights reserved.
//

import UIKit

class UserInfo {

    var email: String?
    var firstName: String?
    var lastName: String?
    var address : String?
    var phone: Int?
    var points: Int?
    var x: CGFloat?
    var y: CGFloat?
    
    var photo: String?
    var photoWidth: CGFloat?
    var photoHeight: CGFloat?
    
    init(email: String, firstName: String, lastName : String, address : String, phone : Int, points : Int, x : CGFloat, y : CGFloat, photo: String, photoWidth: CGFloat, photoHeight: CGFloat) {
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
        self.address = address
        self.phone = phone
        self.points = points
        self.x = x
        self.y = y
        self.photo = photo
        self.photoWidth = photoWidth
        self.photoHeight = photoHeight
    }
    
}
