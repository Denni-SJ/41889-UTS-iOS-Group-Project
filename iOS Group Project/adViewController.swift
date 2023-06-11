//
//  adViewController.swift
//  iOS Group Project
//
//  Created by Jin O on 2023/05/09.
//

import Foundation
import UIKit
import CoreData

class adViewController: UIViewController {

    @IBOutlet weak var appetiteButton: UIButton!
    
    var account: Account!
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
//
//    var mealData = [
//        ["name" : "Burnt aubergine veggie chilli", "mealNum": "V01", "calories": 0,
//         "protein": 0, "carbs": 0, "meat": false, "vege": true, "glutenF": false] ,
//
//        ["name" : "Auberine parmigiana lasagne", "mealNum": "V02", "calories": 466,
//         "protein": 20, "carbs": 41, "meat": false, "vege": true, "glutenF": true],
//
//        ["name" : "Zeljanica (cheese & spinach pie)", "mealNum": "V03", "calories": 445,
//         "protein": 15, "carbs": 27, "meat": false, "vege": true, "glutenF": true],
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        appetiteButton.layer.cornerRadius = 10
        appetiteButton.layer.masksToBounds = true
        appetiteButton.layer.borderWidth = 2.0
        appetiteButton.layer.borderColor = UIColor(red: 52/255, green: 128/255, blue: 46/255, alpha: 1.0).cgColor
        print(account)
        if account == nil {
            print("ACCOUNT EMPTY FUCK")
        }else {
            print("ACCOUNT NOT EMPTY YAY")

        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
            if let prefVc = segue.destination as? preferenceViewController {
                prefVc.account = account
                print(prefVc.account)
                
            }
        
    }
    
    
}
