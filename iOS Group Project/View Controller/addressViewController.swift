//
//  addressViewController.swift
//  iOS Group Project
//
//  Created by Louis Tsou on 15/5/2023.
//

import Foundation
import UIKit

class addressViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var addressLine1TextField: UITextField!
    @IBOutlet weak var addressLine2TextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var postalCodeTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var deliveryInstructionsTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            // Do any additional setup after loading the view.
        firstNameTextField.delegate = self
        lastNameTextField.delegate = self
        addressLine1TextField.delegate = self
        addressLine2TextField.delegate = self
        cityTextField.delegate = self
        postalCodeTextField.delegate = self
        phoneNumberTextField.delegate = self
        deliveryInstructionsTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case firstNameTextField:
            lastNameTextField.becomeFirstResponder()
        case lastNameTextField:
            addressLine1TextField.becomeFirstResponder()
        case addressLine1TextField:
            addressLine2TextField.becomeFirstResponder()
        case addressLine2TextField:
            cityTextField.becomeFirstResponder()
        case cityTextField:
            postalCodeTextField.becomeFirstResponder()
        case postalCodeTextField:
            phoneNumberTextField.becomeFirstResponder()
        case phoneNumberTextField:
            deliveryInstructionsTextField.becomeFirstResponder()
        case deliveryInstructionsTextField:
            textField.resignFirstResponder()
        default:
            break
        }
        return true
    }
    
    @IBAction func submitButtonPressed(_ sender: UIButton) {
        // Perform validation before saving the user information
        if firstNameTextField.text?.isEmpty ?? true || lastNameTextField.text?.isEmpty ?? true || addressLine1TextField.text?.isEmpty ?? true || addressLine2TextField.text?.isEmpty ?? true || cityTextField.text?.isEmpty ?? true || postalCodeTextField.text?.isEmpty ?? true || phoneNumberTextField.text?.isEmpty ?? true {
            
            // Show an alert indicating missing required fields
            let alertController = UIAlertController(title: "Error", message: "Please fill in all required fiels!", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        } else {
            // Save user information
            let userInfo = UserInfo(firstName: firstNameTextField.text!, lastName: lastNameTextField.text!, addressLine1: addressLine1TextField.text!, addressLine2: addressLine2TextField.text ?? "", city: cityTextField.text!, postalCode: Int(postalCodeTextField.text!)!, phoneNumber: Int(phoneNumberTextField.text!)!, deliveryInstructions: deliveryInstructionsTextField.text ?? "")
        }
    }
}
