//
//  menuViewController.swift
//  iOS Group Project
//
//  Created by Gavin josh Logronio on 22/5/2023.
//

import Foundation
import UIKit
import CoreData

class menuViewController: UIViewController {

    @IBOutlet weak var reselectButton: UIButton!
    @IBOutlet weak var thisWeekButton: UIButton!
    @IBOutlet weak var pagesStackView: UIStackView!
    @IBOutlet weak var menuStack1: UIStackView!
    @IBOutlet weak var menuStack2: UIStackView!
    @IBOutlet weak var menuStack3: UIStackView!
    var meals: [Meal] = []
    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pagesStackView.layer.borderWidth = 5
        pagesStackView.layer.borderColor = CGColor(red: 52 / 255, green: 128 / 255, blue: 46 / 255, alpha: 1)
        let frame = CGRect(x: 30, y: 160, width: 330, height: 550)
        let myView = UIView(frame: frame)
        myView.layer.borderWidth = 5
        myView.layer.borderColor = CGColor(red: 52 / 255, green: 128 / 255, blue: 46 / 255, alpha: 1)
        myView.layer.cornerRadius = 40
        self.view.addSubview(myView)
        self.view.sendSubviewToBack(myView)
        pagesStackView.layer.borderWidth = 5
        pagesStackView.layer.borderColor = CGColor(red: 52 / 255, green: 128 / 255, blue: 46 / 255, alpha: 1)
        menuStack1.layer.borderWidth = 1
        menuStack1.layer.borderColor = CGColor(red: 52 / 255, green: 128 / 255, blue: 46 / 255, alpha: 1)
        menuStack2.layer.borderWidth = 1
        menuStack2.layer.borderColor = CGColor(red: 52 / 255, green: 128 / 255, blue: 46 / 255, alpha: 1)
        menuStack3.layer.borderWidth = 1
        menuStack3.layer.borderColor = CGColor(red: 52 / 255, green: 128 / 255, blue: 46 / 255, alpha: 1)
        
        
        let fetchRequest: NSFetchRequest<Meal> = Meal.fetchRequest()
        
        do {
                   meals = try context.fetch(fetchRequest)
               } catch let error as NSError {
                   print("Failed to fetch meals from Core Data. Error: \(error), \(error.userInfo)")
               }
        
        for meal in meals {
                    print("Meal name: \(meal.name ?? "")")
                    print("Meal carbs: \(meal.carbs)")
                    // Access other attributes of the meal
                }
    }


}
