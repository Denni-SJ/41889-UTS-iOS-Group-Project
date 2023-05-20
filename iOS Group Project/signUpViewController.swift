//
//  signUpViewController.swift
//  iOS Group Project
//
//  Created by Jin O on 2023/05/09.
//

import Foundation
import UIKit

class signUpViewController: UIViewController {

    
    @IBOutlet weak var continueButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        continueButton.layer.cornerRadius = 10
        continueButton.layer.masksToBounds = true
            // Do any additional setup after loading the view.
    }
}
