//
//  signInViewController.swift
//  iOS Group Project
//
//  Created by Jin O on 2023/05/09.
//

import Foundation
import UIKit

class signInViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var rememberMeSwitch: UISwitch!
    @IBOutlet weak var continueButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        continueButton.layer.cornerRadius = 10
        continueButton.layer.masksToBounds = true
        // Do any additional setup after loading the view.
        
        // Set Remember Me switch is off
        rememberMeSwitch.isOn = false
        
        // Clear text fields
        emailTextField.text = "Email"
        passwordTextField.text = "Password"
        
        // Retrieve saved information if Remember Me is on
        if rememberMeSwitch.isOn {
            loadSavedCredentials()
//            if let savedEmail = UserDefaults.standard.string(forKey: "email"),
//                let savedPassword = UserDefaults.standard.string(forKey: "password") {
//                emailTextField.text = savedEmail
//                passwordTextField.text = savedPassword
//            }
        }
    }
    
    @IBAction func continueButtonTapped(_ sender: UIButton) {
        guard let savedEmail = UserDefaults.standard.string(forKey: "email"),
              let savedPassword = UserDefaults.standard.string(forKey: "password"),
              let email = emailTextField.text,
              let password = passwordTextField.text else {
            return
        }
        
        // Check username and password
        if email == savedEmail && password == savedPassword {
            print("Sign in successful")
            
            // Check remember me switch is on
            if rememberMeSwitch.isOn {
                saveCredentials()
//                UserDefaults.standard.set(email, forKey: "email")
//                UserDefaults.standard.set(password, forKey: "password")
            } else {
                // Clear saved username and password
                clearCredentials()
//                UserDefaults.standard.removeObject(forKey: "email")
//                UserDefaults.standard.removeObject(forKey: "password")
            }
        } else {
            print("Incorrect email or password")
            showErrorMessage()
        }
    }
    
    @IBAction func rememberMeSwitchChanged(_ sender: UISwitch) {
        if sender.isOn {
            saveCredentials()
        } else {
            clearCredentials()
        }
    }
    
    private func loadSavedCredentials() {
        DispatchQueue.main.async {
            if let savedEmail = UserDefaults.standard.string(forKey: "email"),
               let savedPassword = UserDefaults.standard.string(forKey: "password") {
                self.emailTextField.text = savedEmail
                self.passwordTextField.text = savedPassword
            }
        }
    }
    
    private func saveCredentials() {
        let email = emailTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        
        UserDefaults.standard.set(email, forKey: "email")
        UserDefaults.standard.set(password, forKey: "password")
    }
    
    private func clearCredentials() {
        UserDefaults.standard.removeObject(forKey: "email")
        UserDefaults.standard.removeObject(forKey: "password")
    }
    
    private func showErrorMessage() {
        let alertController = UIAlertController(title: "Error", message: "Incorrect email or password!", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK.", style: .default, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }

//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//
//        // Load saved username and password
//        if let savedEmail = UserDefaults.standard.string(forKey: "email"),
//           let savedPassword = UserDefaults.standard.string(forKey: "password") {
//            emailTextField.text = savedEmail
//            passwordTextField.text = savedPassword
//            rememberMeSwitch.isOn = true
//        } else {
//            rememberMeSwitch.isOn = false
//        }
//    }
}
