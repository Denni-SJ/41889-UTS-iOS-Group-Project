//
//  preferenceViewController.swift
//  iOS Group Project
//
//  Created by Jin O on 2023/05/12.
//

import Foundation
import UIKit

class preferenceViewController: UIViewController {


    @IBOutlet weak var meatLover: UIButton!
    @IBOutlet weak var lowCarb: UIButton!
    @IBOutlet weak var lowCalories: UIButton!
    @IBOutlet weak var vegan: UIButton!
    @IBOutlet weak var highProtein: UIButton!
    @IBOutlet weak var asian: UIButton!
    @IBOutlet weak var halal: UIButton!
    @IBOutlet weak var upForEverything: UIButton!
    @IBOutlet weak var continueButton: UIButton!
    var selectFlag = false

    override func viewDidLoad() {
        super.viewDidLoad()
        buttonSetUp()

        meatLover.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
        lowCarb.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
        lowCalories.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
        vegan.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
        highProtein.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
        asian.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
        halal.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
        upForEverything.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }

    func buttonSetUp() {
        let buttonsArray = [meatLover, lowCarb, lowCalories, vegan, highProtein, asian, halal, upForEverything].compactMap { $0 }
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
        if(selectFlag){
                   let vc = self.storyboard?.instantiateViewController(withIdentifier: "portionViewController") as! portionViewController
                   self.navigationController?.pushViewController(vc, animated: true)
               }
               else {
                   let alertController = UIAlertController(title: "Error", message: "Please select one preference", preferredStyle: .alert)
                   alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                   present(alertController, animated: true, completion: nil)
               }
    }
}
