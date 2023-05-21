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
            let buttonsArray = [meatLover, lowCarb, lowCalories, vegan, highProtein, asian, halal, upForEverything].compactMap{$0}
           borderOfButtons(buttons: buttonsArray)
    }
    
    func borderOfButtons(buttons: [UIButton]) {
        for button in buttons {
            button.layer.borderWidth = 2.0
            button.layer.borderColor = UIColor.green.cgColor
        }
    }
    @objc func buttonPressed(_ sender: UIButton){
        sender.setTitleColor(.green, for: .highlighted)
    }
}
