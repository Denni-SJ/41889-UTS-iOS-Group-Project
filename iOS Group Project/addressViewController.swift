//
//  addressViewController.swift
//  iOS Group Project
//
//  Created by Louis Tsou on 15/5/2023.
//

import Foundation
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
    let newAccount = Accounts()
    override func viewDidLoad() {
        super.viewDidLoad()
        var email = UserDefaults.standard.string(forKey: userEmail)
        errorText.isHidden = true
    }
    @IBAction func submitButtonPressed(_ sender: UIButton) {
        if self.firstNameText.text == nil {
            errorText.isHidden = false
        }

        if self.lastNameText.text == nil {
            errorText.isHidden = false
        }

        if self.addressLine1Text.text == nil {
            errorText.isHidden = false
        }

        if self.addressLine2Text.text == nil {

            errorText.isHidden = false
        }

        if self.cityText.text == nil {
            errorText.isHidden = false
        }

        if self.postalCodeText.text == nil {
            errorText.isHidden = false
        }

        if self.phoneNumberText.text == nil {

            errorText.isHidden = false
        }

        if self.deliveryInstructText.text == nil {
            errorText.isHidden = false
        }
        else {
            newAccount.Fname = firstNameText.text!
            newAccount.Fname = firstNameText.text!
            newAccount.Lname = lastNameText.text!
            newAccount.address = addressLine1Text.text!
            newAccount.address2 = addressLine2Text.text!
            newAccount.city = cityText.text!
            newAccount.phone = Int(phoneNumberText.text!)!
            newAccount.deliveryInst = deliveryInstructText.text!
            UserDefaults.standard.set(newAccount, forKey: userEmail)
        }
        
    }
}
