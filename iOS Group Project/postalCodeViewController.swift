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
    @IBOutlet weak var validLabel: UILabel!
    @IBOutlet weak var submitButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        validLabel.isHidden = true
        postalCodeTextField.layer.cornerRadius = 10
        postalCodeTextField.layer.masksToBounds = true
        // Do any additional setup after loading the view.
    }

    func isValid(text: String) -> Bool {
        let range = NSRange(location: 0, length: postalCodeTextField.text!.count)
        let regex = try! NSRegularExpression(pattern: "^[0-9]{4}$")
        guard !text.isEmpty else {
            validLabel.isHidden = false
            return false
        }
        if (regex.firstMatch(in: text, range: range) != nil) {
            return true
        }
        else {
            validLabel.isHidden = false
            return false
        }
    }

    @IBAction func submit(_ sender: UIButton) {
        if(isValid(text: postalCodeTextField.text!)) {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "signUpViewController") as! signUpViewController
            self.navigationController?.pushViewController(vc, animated: true)

        }
        else {
            validLabel.isHidden = false
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
