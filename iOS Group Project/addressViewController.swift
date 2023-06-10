//
//  detailsViewController.swift
//  iOS Group Project
//
//  Created by K on 10/6/2023.
//

import Foundation
import Accounts
import UIKit
import UserNotifications

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
    // let newAccount = Account()
    var checkEmpty: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var email = UserDefaults.standard.string(forKey: userEmail)
        
        continueButton.layer.cornerRadius = 10
        continueButton.layer.masksToBounds = true
    }
    
    
    @IBAction func continueButtonTapped(_ sender: Any) {
        if self.firstNameText.text == nil {
            checkEmpty = true
        }
        
        if self.lastNameText.text == nil {
            checkEmpty = true
        }
        
        if self.addressLine1Text.text == nil {
            checkEmpty = true
        }
        
        if self.addressLine2Text.text == nil {
            checkEmpty = true
        }
        
        if self.cityText.text == nil {
            checkEmpty = true
        }
        
        if self.postalCodeText.text == nil {
            checkEmpty = true
        }
        
        if self.phoneNumberText.text == nil {
            checkEmpty = true
        }

        if self.deliveryInstructionsText.text == nil {
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
            Account.shared.deliveryInst = deliveryInstructionsText.text
            sendNotification()
        } else {
            let alertController = UIAlertController(title: "Error", message: "Please fill in all the required text fields", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
        
        func sendNotification() {
            let center = UNUserNotificationCenter.current()
            let content = UNMutableNotificationContent()
            content.title = "SmallRich"
            content.body = "Your meal has been delivered to the following address \(String(describing: Account.shared.address))"
            content.sound = .default
            
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
            let request = UNNotificationRequest(identifier: "SmallRich", content: content, trigger: trigger)
            
            center.add(request) {(error) in
                if error != nil {
                    print("Error = \(error?.localizedDescription ?? "error local notification")")
                }
            }
        }
    }
}
