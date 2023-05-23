//
//  Meal.swift
//  iOS Group Project
//
//  Created by Gavin josh Logronio on 9/5/2023.
//

import UIKit

class Meal{
    var Name:String = ""
    var Calories:Int = 0
    var Protein: Int = 0
    var Time: Int = 0
    var Halal: Bool = false
    var Carbs: Int = 0
    var Gluten: Bool = false
    var Ingredients: [String] = []
    var Image: [UIImage] = []
    
    func getName(name: String) -> String
    {
        return name
    }
    
    func getCalories()
    {
        
    }
}
