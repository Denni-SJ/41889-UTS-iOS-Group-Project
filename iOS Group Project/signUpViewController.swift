//
//  signUpViewController.swift
//  iOS Group Project
//
//  Created by Jin O on 2023/05/09.
//

import Foundation
import UIKit

class signUpViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var continueButton: UIButton!
    
    var username: String = ""
    var password: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        continueButton.layer.cornerRadius = 10
        continueButton.layer.masksToBounds = true
            // Do any additional setup after loading the view.
    }
    
    
    @IBAction func continueButtonTapped(_ sender: UIButton) {
        guard let username = usernameTextField.text,
              let password = passwordTextField.text else {
            return
        }
        
        if username.isEmpty || password.isEmpty {
            let alertController = UIAlertController(title: "Error", message: "Please fill in all fields!", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alertController, animated: true, completion: nil)
            return
        }
        
        print("Username: \(username)")
        print("Password: \(password)")
        
        let alertController = UIAlertController(title: "Success", message: "Account created!", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK.", style: .default, handler: { (_) in
        }))
        present(alertController, animated: true, completion: nil)
    }
}
