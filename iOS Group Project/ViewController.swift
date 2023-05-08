//
//  ViewController.swift
//  iOS Group Project
//
//  Created by Jin O on 2023/05/09.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var bnt1: UIButton!
    
    var text:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        text = "Working"
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        label1.text = text
    }
    
}

