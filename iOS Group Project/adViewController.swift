//
//  adViewController.swift
//  iOS Group Project
//
//  Created by Jin O on 2023/05/09.
//

import Foundation
import UIKit

class adViewController: UIViewController {

    @IBOutlet weak var appetiteButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        appetiteButton.layer.cornerRadius = 10
        appetiteButton.layer.masksToBounds = true
        appetiteButton.layer.borderWidth = 2.0
        appetiteButton.layer.borderColor = UIColor(red: 52/255, green: 128/255, blue: 46/255, alpha: 1.0).cgColor
    }
}
