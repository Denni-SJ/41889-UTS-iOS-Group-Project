//
//  recipeViewController.swift
//  iOS Group Project
//
//  Created by Jin O on 2023/05/12.
//

import Foundation
import UIKit

class recipeViewController: UIViewController {
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var continueButton: UIButton!
    var selectFlag: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        buttonSetUp()
        threeButton.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
        fourButton.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
        fiveButton.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
        
        continueButton.layer.cornerRadius = 10
        continueButton.layer.masksToBounds = true
    }
    
    func buttonSetUp() {
        let buttonsArray = [threeButton, fourButton, fiveButton].compactMap { $0 }
        borderOfButtons(buttons: buttonsArray)
    }

    func borderOfButtons(buttons: [UIButton]) {
        for button in buttons {
            button.layer.borderWidth = 2.0
            button.layer.borderColor = UIColor(red: 52/255, green: 128/255, blue: 46/255, alpha: 1.0).cgColor
            button.layer.cornerRadius = 10
            button.layer.masksToBounds = true
        }
    }

    @objc func buttonPressed(_ sender: UIButton) {
        if !selectFlag {
            sender.backgroundColor = UIColor(red: 52/255, green: 128/255, blue: 46/255, alpha: 0.5)
            selectFlag = true
        }
        else if sender.backgroundColor == UIColor(red: 52/255, green: 128/255, blue: 46/255, alpha: 0.5) {
            sender.backgroundColor = UIColor.white
            selectFlag = false
        }
    }

    @IBAction func continueButtonPressed(_ sender: UIButton) {
        if selectFlag {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "addressViewController") as! addressViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else {
            let alertController = UIAlertController(title: "Error", message: "Please select one preference", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
    }

}
