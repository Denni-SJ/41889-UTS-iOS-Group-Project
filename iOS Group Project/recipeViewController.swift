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
    }
    
    func buttonSetUp() {
        let buttonsArray = [threeButton, fourButton, fiveButton].compactMap { $0 }
        borderOfButtons(buttons: buttonsArray)
    }

    func borderOfButtons(buttons: [UIButton]) {
        for button in buttons {
            button.layer.borderWidth = 2.0
            button.layer.borderColor = UIColor.green.cgColor
        }
    }

    @objc func buttonPressed(_ sender: UIButton) {
        if(!selectFlag) {
            sender.backgroundColor = UIColor(red: 0 / 255, green: 130 / 255, blue: 29 / 255, alpha: 0.8)
            selectFlag = true
        }
        else if(sender.backgroundColor == UIColor(red: 0 / 255, green: 130 / 255, blue: 29 / 255, alpha: 0.8)) {
            sender.backgroundColor = UIColor.white
            selectFlag = false
        }
    }

    @IBAction func continueButtonPressed(_ sender: UIButton) {
        if(selectFlag) {
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
