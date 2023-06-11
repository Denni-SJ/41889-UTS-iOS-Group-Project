//
//  signInViewController.swift
//  iOS Group Project
//
//  Created by Jin O on 2023/05/09.
//

import Foundation
import UIKit
import CoreData

class signInViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var rememberMeSwitch: UISwitch!
    @IBOutlet weak var continueButton: UIButton!
    
    var context: NSManagedObjectContext!
    var account: Account?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set Remember Me switch is off
        rememberMeSwitch.isOn = false
        
        // Retrieve saved information if Remember Me is on
        if rememberMeSwitch.isOn {
            loadSavedCredentials()
        }
        
        continueButton.layer.cornerRadius = 10
        continueButton.layer.masksToBounds = true
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        context = appDelegate.persistentContainer.viewContext
    }
    
    @IBAction func continueButtonTapped(_ sender: UIButton) {
        guard let email = emailTextField.text,
              let password = passwordTextField.text else {
            return
        }
        
        let request: NSFetchRequest<Account> = Account.fetchRequest()
        request.predicate = NSPredicate(format: "email = %@", email)
        
        do {
            let results = try context.fetch(request)
            if let account = results.first {
                if account.password == password {
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "adViewController") as! adViewController
                    vc.account = account
                    self.navigationController?.pushViewController(vc, animated: true)
                    
                    // Check remember me switch is on
                    if rememberMeSwitch.isOn {
                        saveCredentials()
                    } else {
                        clearCredentials()
                    }
                } else {
                    displayErrorAlert(message: "Incorrect password")
                }
            } else {
                displayErrorAlert(message: "Account not found")
            }
        } catch {
            displayErrorAlert(message: "Failed to fetch account")
        }
    }
    
    @IBAction func rememberMeSwitchChanged(_ sender: UISwitch) {
        if sender.isOn {
            guard let email = emailTextField.text, let password = passwordTextField.text else {
                return
        }
            let request: NSFetchRequest<Account> = Account.fetchRequest()
            request.predicate = NSPredicate(format: "email = %@", email)
            
            do {
                let results = try context.fetch(request)
                if results.isEmpty {
                    return
                }
            } catch {
                print("Failed to fetch account: \(error)")
                return
            }
            
            saveCredentials()
        } else {
            clearCredentials()
        }
    }
    
    private func loadSavedCredentials() {
        let request: NSFetchRequest<Account> = Account.fetchRequest()
        
        do {
            let results = try context.fetch(request)
            if let account = results.first {
                emailTextField.text = account.email
                passwordTextField.text = account.password
            }
        } catch {
            print("Failed to fetch saved credentials: \(error)")
        }
    }
    
    private func saveCredentials() {
        guard let email = emailTextField.text,
              let password = passwordTextField.text else {
            return
        }
        
        let request: NSFetchRequest<Account> = Account.fetchRequest()
            request.predicate = NSPredicate(format: "email = %@", email)

        do {
            let results = try context.fetch(request)
            if let account = results.first {
                account.email = email
                account.password = password
            } else {
                let newAccount = Account(context: context)
                newAccount.email = email
                newAccount.password = password
            }
            
            try context.save()
        } catch {
            print("Failed to save credentials: \(error)")
        }
    }
    
    private func clearCredentials() {
        emailTextField.text = nil
        passwordTextField.text = nil
    }

    private func displayErrorAlert(message: String) {
        let alertController = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
}
