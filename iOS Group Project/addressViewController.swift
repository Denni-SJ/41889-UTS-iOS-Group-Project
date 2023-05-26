//
//  addressViewController.swift
//  iOS Group Project
//
//  Created by Louis Tsou on 15/5/2023.
//

import Foundation
import Accounts
import UIKit

class addressViewController: UIViewController {
    
    @IBOutlet weak var firstNameText: UITextField!
    @IBOutlet weak var lastNameText: UITextField!
    @IBOutlet weak var addressLine1Text: UITextField!
    @IBOutlet weak var addressLine2Text: UITextField!
    @IBOutlet weak var cityText: UITextField!
    @IBOutlet weak var postalCodeText: UITextField!
    @IBOutlet weak var phoneNumberText: UITextField!
    @IBOutlet weak var deliveryInstructText: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var errorText: UILabel!
    
    var userEmail:String = ""
//    let newAccount = Account()
    var checkEmpty:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var email = UserDefaults.standard.string(forKey: userEmail)
        errorText.isHidden = true
    }
    @IBAction func submitButtonPressed(_ sender: UIButton) {
        
        if self.firstNameText.text == nil {
            errorText.isHidden = false
            checkEmpty = true
        }
        
       
        if self.lastNameText.text == nil {
            errorText.isHidden = false
            checkEmpty = true
        }

        if self.addressLine1Text.text == nil {
            errorText.isHidden = false
            checkEmpty = true
        }

        if self.addressLine2Text.text == nil {
            errorText.isHidden = false
            checkEmpty = true
        }

        if self.cityText.text == nil {
            errorText.isHidden = false
            checkEmpty = true
        }

        if self.postalCodeText.text == nil {
            errorText.isHidden = false
            checkEmpty = true
        }

        if self.phoneNumberText.text == nil {
            errorText.isHidden = false
            checkEmpty = true
        }

        if self.deliveryInstructText.text == nil {
            errorText.isHidden = false
            checkEmpty = true
        }
        
        if !checkEmpty {
            
            var phoneNum: String = phoneNumberText.text!
            var postal: String = postalCodeText.text!
            Account.shared.fName = firstNameText.text
            Account.shared.lName = lastNameText.text
            Account.shared.address = addressLine1Text.text
            Account.shared.address2 = addressLine2Text.text
            Account.shared.city = cityText.text
            Account.shared.phone = Int(phoneNum)
            Account.shared.postal = Int(postal)
            Account.shared.deliveryInst = deliveryInstructText.text
            
            
            
        }
        
    }
}
