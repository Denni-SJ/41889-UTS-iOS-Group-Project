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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        postalCodeTextField.layer.cornerRadius = 10
        postalCodeTextField.layer.masksToBounds = true
            // Do any additional setup after loading the view.
    }
}
