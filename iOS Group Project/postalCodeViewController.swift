//
//  postalCodeViewController.swift
//  iOS Group Project
//
//  Created by Jin O on 2023/05/09.
//

import Foundation
import UIKit

class postalCodeViewController: UIViewController {



    @IBOutlet weak var postalCodeTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        postalCodeTextField.layer.cornerRadius = 10
        postalCodeTextField.layer.masksToBounds = true
        
        submitButton.layer.cornerRadius = 10
        submitButton.layer.masksToBounds = true
    }

    func isValid(text: String) -> Bool {
        let range = NSRange(location: 0, length: postalCodeTextField.text!.count)
        let regex = try! NSRegularExpression(pattern: "^[0-9]{4}$")
        guard !text.isEmpty else {
            return false
        }
        if (regex.firstMatch(in: text, range: range) != nil) {
            return true
        }
        else {
            return false
        }
    }
    func isDeliveryAvailable(text: String) -> Bool {
        let range = NSRange(location: 0, length: postalCodeTextField.text!.count)
        let basicRegex = try! NSRegularExpression(pattern: "^2[0-5][0-9][0-9]$")
        guard !text.isEmpty else {
            return false
        }
        if (basicRegex.firstMatch(in: text, range: range) != nil) {
            return true
        }
        else {
            return false
        }
    }
    
    @IBAction func submitButtonTapped(_ sender: UIButton) {
        let postalCode = postalCodeTextField.text!
        
        if(isValid(text: postalCode)) {
            if(isDeliveryAvailable(text: postalCode)){
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "signUpViewController") as! signUpViewController
                self.navigationController?.pushViewController(vc, animated: true)
            }
            else {
                let alertController = UIAlertController(title: "Error", message: "Apologies, we don't deliver to your area", preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                present(alertController, animated: true, completion: nil)
                postalCodeTextField.text = ""
            }
            }else {
                let alertController = UIAlertController(title: "Error", message: "Please fill in a 4 digit post code", preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                present(alertController, animated: true, completion: nil)
                postalCodeTextField.text = ""
            }
        }
    }

extension NSRegularExpression {
    convenience init(_ pattern: String) {
        do {
            try self.init(pattern: pattern)
        } catch {
            preconditionFailure("Illegal regular expression: \(pattern).")
        }
    }
}
