//
//  signUpViewController.swift
//  iOS Group Project
//
//  Created by Jin O on 2023/05/09.
//

import Foundation
import UIKit
import Accounts

class signUpViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var continueButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        continueButton.layer.cornerRadius = 10
        continueButton.layer.masksToBounds = true
            // Do any additional setup after loading the view.
    }
    
    
    @IBAction func continueButtonTapped(_ sender: UIButton) {
        guard let email = emailTextField.text,
              let password = passwordTextField.text else {
            return
        }
        
        if email.isEmpty || password.isEmpty {
            let alertController = UIAlertController(title: "Error", message: "Please fill in all fields!", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alertController, animated: true, completion: nil)
            return
        }
        
        Account.shared.email = email
        Account.shared.password = password
        UserDefaults.standard.set(email, forKey: "email")
        UserDefaults.standard.set(password, forKey: "password")
        
        let alertController = UIAlertController(title: "Success", message: "Account created!", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK.", style: .default, handler: { (_) in
        }))
        present(alertController, animated: true, completion: nil)
    }
}
