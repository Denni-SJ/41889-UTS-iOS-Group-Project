//
//  Meal.swift
//  iOS Group Project
//
//  Created by Gavin josh Logronio on 13/5/2023.
//

import UIKit

class Meal {
    
    var mealNum: String = ""
    var calories: Int = 0
    var protein: Int = 0
    var time: Int = 0
    var halal: Bool = false
    var carbs: Int = 0
    var ingredients: [String] = []
    var gluten: Bool = false
    
    func getCalories() -> Int{
        return calories
    }
    
    func getProtein() -> Int{
        return calories
    }
    
    
}
