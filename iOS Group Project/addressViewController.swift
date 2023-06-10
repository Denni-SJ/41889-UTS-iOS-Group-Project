//
//  detailsViewController.swift
//  iOS Group Project
//
//  Created by K on 10/6/2023.
//

import Foundation
import UIKit
import UserNotifications
import CoreData

class addressViewController: UIViewController {
    
    @IBOutlet weak var firstNameText: UITextField!
    @IBOutlet weak var lastNameText: UITextField!
    @IBOutlet weak var addressLine1Text: UITextField!
    @IBOutlet weak var addressLine2Text: UITextField!
    @IBOutlet weak var cityText: UITextField!
    @IBOutlet weak var postalCodeText: UITextField!
    @IBOutlet weak var phoneNumberText: UITextField!
    @IBOutlet weak var deliveryInstructionsText: UITextField!
    @IBOutlet weak var continueButton: UIButton!
    
    var userEmail: String = ""
    
    var checkEmpty: Bool = false
    
    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var account: Account!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        continueButton.layer.cornerRadius = 10
        continueButton.layer.masksToBounds = true
    }
    
    @IBAction func continueButtonTapped(_ sender: UIButton) {
        if self.firstNameText.text == "" {
            checkEmpty = true
        }
        else {
            account.fName = firstNameText.text
        }
        
        if self.lastNameText.text == "" {
            checkEmpty = true
        }
        else {
            account.lname = lastNameText.text
        }
        
        if self.addressLine1Text.text == "" {
            checkEmpty = true
        } else {
            account.address = addressLine1Text.text
        }
        
        if self.addressLine2Text.text == "" {
            checkEmpty = true
        } else {
            account.address2 = addressLine2Text.text
        }
        
        if self.cityText.text == "" {
            checkEmpty = true
        } else {
            account.city = cityText.text
        }
        
        if self.postalCodeText.text == "" {
            checkEmpty = true
        } else {
//            var postalCode: Int? = Int(postalCodeText.text)
//            account.postal = postalCode
        }
        
        if self.phoneNumberText.text == "" {
            checkEmpty = true
        } else {
            
        }
        
        if (checkEmpty == false) {
            var phoneNum: String = phoneNumberText.text!
            var postal: String = postalCodeText.text!
          
            
            let alertController = UIAlertController(title: "Meal Sent", message: "Your meal plan has been confirmed and sent to the following address: \(addressLine1Text.text!)", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alertController, animated: true, completion: nil)

        } else if(checkEmpty == true) {
            let alertController = UIAlertController(title: "Error", message: "Please fill in all the required text fields", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
        
        
        
    }
}
