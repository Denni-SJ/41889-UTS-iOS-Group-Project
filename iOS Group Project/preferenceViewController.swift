//
//  preferenceViewController.swift
//  iOS Group Project
//
//  Created by Jin O on 2023/05/12.
//

import Foundation
import UIKit
import CoreData

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
    var account: Account!
    var context: NSManagedObjectContext?
    var meals: [Meal] = []
    



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
        
        continueButton.layer.cornerRadius = 10
        continueButton.layer.masksToBounds = true
    }

    func buttonSetUp() {
        let buttonsArray = [meatLover, lowCarb, lowCalories, vegan, highProtein, asian, halal, upForEverything].compactMap { $0 }
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
            sender.setTitleColor(UIColor.white, for: .normal)
            selectFlag = true
        }
        else if sender.backgroundColor == UIColor(red: 52/255, green: 128/255, blue: 46/255, alpha: 0.5) {
            sender.backgroundColor = UIColor.white
            sender.setTitleColor(UIColor(red: 52/255, green: 128/255, blue: 46/255, alpha: 1.0), for: .normal)
            selectFlag = false
        }
        
        if sender == meatLover {
            let meal1 = Meal(context: context ?? (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext)
            meal1.name = "Creamy tarragon chicken bake"
            meal1.mealNum = "N3"
            meal1.calories = 320
            meal1.carbs = 18
            meal1.protein = 40
            meal1.glutenF = true
            meal1.vege = false
            
            let meal2 = Meal(context: context ?? (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext)
            meal2.name = "Peanut butter chicken"
            meal2.mealNum = "DF1"
            meal2.calories = 572
            meal2.carbs = 33
            meal2.protein = 13
            meal2.glutenF = true
            meal2.vege = false
            
            let meal3 = Meal(context: context ?? (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext)
            meal3.name = "Honey chicken"
            meal3.mealNum = "DF2"
            meal3.calories = 333
            meal3.carbs = 35
            meal3.protein = 36
            meal3.glutenF = false
            meal3.vege = false
            
            let meal4 = Meal(context: context ?? (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext)
            meal4.name = "Crispy sesame lemon chicken"
            meal4.mealNum = "DF3"
            meal4.calories = 280
            meal4.carbs = 26
            meal4.protein = 26
            meal4.glutenF = false
            meal4.vege = false
            do {
                        try context!.save()
                        print("Meal saved to Core Data")
                    } catch let error as NSError {
                        print("Failed to save meal to Core Data. Error: \(error), \(error.userInfo)")
                    }
        }
    }
    
    @IBAction func continueButtonPressed(_ sender: UIButton) {
        if selectFlag {
                   let vc = self.storyboard?.instantiateViewController(withIdentifier: "portionViewController") as! portionViewController
                   self.navigationController?.pushViewController(vc, animated: true)
               }
               else {
                   let alertController = UIAlertController(title: "Error", message: "Please select one preference", preferredStyle: .alert)
                   alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                   present(alertController, animated: true, completion: nil)
            }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "portionViewController" {
            if let porpVc = segue.destination as? portionViewController {
                porpVc.account = account
                porpVc.context = context
            }
        }
    }
}
