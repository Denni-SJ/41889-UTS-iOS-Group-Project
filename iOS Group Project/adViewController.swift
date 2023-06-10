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
    var context: NSManagedObjectContext?
    var meals: [Meal] = []
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
        
//        var mealData = [
//            ["name" : "Burnt aubergine veggie chilli", "mealNum": "V01", "calories": 0,
//             "protein": 0, "carbs": 0, "meat": false, "vege": true, "glutenF": false] ,
//            ["name" : "Auberine parmigiana lasagne", "mealNum": "V02", "calories": 466,
//             "protein": 20, "carbs": 41, "meat": false, "vege": true, "glutenF": true],
//            ["name" : "Zeljanica (cheese & spinach pie)", "mealNum": "V03", "calories": 445,
//             "protein": 15, "carbs": 27, "meat": false, "vege": true, "glutenF": true],
//
//            ["name" : "Jerk-seasoned chicken pilaf", "mealNum": "GF1", "calories": 411,
//             "protein": 22, "carbs": 53, "meat": true, "vege": false, "glutenF": true],
//            ["name" : "Paneer korma", "mealNum": "GF2", "calories": 509,
//             "protein": 33, "carbs": 21, "meat": false, "vege": true, "glutenF": true],
//            ["name" : "Gluten-free salmon pasta", "mealNum": "GF3", "calories": 587,
//             "protein": 24, "carbs": 86, "meat": true, "vege": false, "glutenF": true],
//
//            ["name" : "One-pot vegan rice and beans", "mealNum": "N1", "calories": 507,
//             "protein": 13, "carbs": 85, "meat": false, "vege": true, "glutenF": true],
//            ["name" : "Lazy cheesy vegetable hotpot", "mealNum": "N2", "calories": 308,
//             "protein": 15, "carbs": 19, "meat": false, "vege": true, "glutenF": false],
//            ["name" : "Creamy tarragon chicken bake", "mealNum": "N3", "calories": 320,
//             "protein": 40, "carbs": 18, "meat": true, "vege": false, "glutenF": true],
//
//            ["name" : "Peanut butter chicken", "mealNum": "DF1", "calories": 572,
//             "protein": 13, "carbs": 33, "meat": true, "vege": false, "glutenF": true],
//            ["name" : "Honey chicken", "mealNum": "DF2", "calories": 333,
//             "protein": 36, "carbs": 35, "meat": false, "vege": true, "glutenF": false],
//            ["name" : "Crispy sesame lemon chicken", "mealNum": "DF3", "calories": 280,
//             "protein": 26, "carbs": 26, "meat": true, "vege": false, "glutenF": false]
//
//        ]
        
//     
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "preferenceViewController" {
            if let prefVc = segue.destination as? preferenceViewController {
                prefVc.account = account
                prefVc.context = context
            }
        }
    }
    
    
}
