//
//  menuViewController.swift
//  iOS Group Project
//
//  Created by Gavin josh Logronio on 22/5/2023.
//

import Foundation
import UIKit

class menuViewController: UIViewController{
    
    @IBOutlet weak var reselectButton: UIButton!
    @IBOutlet weak var thisWeekButton: UIButton!
    @IBOutlet weak var pagesStackView: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        pagesStackView.layer.borderWidth = 5
        pagesStackView.layer.borderColor = CGColor(red: 52/255, green: 128/255, blue: 46/255, alpha: 1)
        let frame = CGRect(x:30, y:160, width: 330, height: 550)
        let myView = UIView(frame: frame)
        myView.layer.borderWidth = 5
        myView.layer.borderColor = CGColor(red: 52/255, green: 128/255, blue: 46/255, alpha: 1)
        myView.layer.cornerRadius = 40
        self.view.addSubview(myView)
        
        pagesStackView.layer.borderWidth = 5
        pagesStackView.layer.borderColor = CGColor(red: 52/255, green: 128/255, blue: 46/255, alpha: 1)
        }

   
        
    
}
