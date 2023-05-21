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
        if self.firstNameText.text != nil {
            newAccount.Fname = firstNameText.text!
        }
        else {
            errorText.isHidden = false
        }

        if self.lastNameText.text != nil {
            newAccount.Fname = firstNameText.text!
        }
        else {
            errorText.isHidden = false
        }

        if self.addressLine1Text.text != nil {
            newAccount.Lname = lastNameText.text!
        }
        else {
            errorText.isHidden = false
        }

        if self.addressLine2Text.text != nil {
            newAccount.address = addressLine1Text.text!
        }
        else {
            errorText.isHidden = false
        }

        if self.cityText.text != nil {
            newAccount.address2 = addressLine2Text.text!
        }
        else {
            errorText.isHidden = false
        }

        if self.postalCodeText.text != nil {
            newAccount.city = cityText.text!
        }
        else {
            errorText.isHidden = false
        }

        if self.phoneNumberText.text != nil {
            newAccount.phone = Int(phoneNumberText.text!)!
        }
        else {
            errorText.isHidden = false
        }

        if self.deliveryInstructText.text != nil {
            newAccount.deliveryInst = deliveryInstructText.text!
        }
        else {
            errorText.isHidden = false
        }
        
        UserDefaults.standard.set(newAccount, forKey: userEmail)
    }
}
