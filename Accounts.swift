//
//  Accounts.swift
//  iOS Group Project
//
//  Created by Gavin josh Logronio on 13/5/2023.
//

import UIKit

class Accounts {
    
    var email: String = " "
    var password: String = " "
    var Fname: String = " "
    var Lname: String = " "
    var address: String = " "
    var city: String = " "
    var address2: String? = " "
    var postal: Int = 0
    var phone: Int = 0
    var deliveryInst: String? = " "
    var mealSelect: [Meal] = []
    
    func getEmail() -> String
    {
        
        return email
    }
    
    func addMeal()
    {
        
    }
}
