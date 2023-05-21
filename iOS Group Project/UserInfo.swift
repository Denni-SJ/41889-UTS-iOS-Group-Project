//
//  UserInfo.swift
//  iOS Group Project
//
//  Created by K on 21/5/2023.
//

import Foundation
import UIKit

class UserInfo {
    var firstName: String = ""
    var lastName: String = ""
    var addressLine1: String = ""
    var addressLine2: String = ""
    var city: String = ""
    var postalCode: Int = 0000
    var phoneNumber: Int = 0
    var deliveryInstructions: String = ""
    
    init(firstName: String, lastName: String, addressLine1: String, addressLine2: String, city: String, postalCode: Int, phoneNumber: Int, deliveryInstructions: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.addressLine1 = addressLine1
        self.addressLine2 = addressLine2
        self.city = city
        self.postalCode = postalCode
        self.phoneNumber = phoneNumber
        self.deliveryInstructions = deliveryInstructions
    }
}
