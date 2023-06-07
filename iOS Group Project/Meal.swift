//
//  Meal.swift
//  iOS Group Project
//
//  Created by Gavin josh Logronio on 13/5/2023.
//

import UIKit

class Meal {
    
    var name: String
    var mealNum: String
    var calories: Int
    var protein: Int
    var halal: Bool
    var carbs: Int
    var ingredients: [String] = []
    var glutenF: Bool
    var vege: Bool
    var nutF: Bool
    var dairyF: Bool
    var fishF: Bool
    
    init (name: String,mealNum: String, calories: Int, protein: Int, halal: Bool, carbs: Int, glutenF: Bool, vege: Bool, nutF: Bool, dairyF: Bool,fishF: Bool){
        self.name = name
        self.mealNum = mealNum
        self.calories = calories
        self.protein = protein
        self.halal = halal
        self.carbs = carbs
        self.glutenF = glutenF
        self.vege = vege
        self.nutF = nutF
        self.dairyF = dairyF
        self.fishF = fishF
    }
    
    func getCalories() -> Int{
        return calories
    }
    
    func getProtein() -> Int{
        return calories
    }
}

var Meals: [Meal] = [
    Meal(name: "Burnt aubergine veggie chilli", mealNum: "V01", calories: 316, protein: 15,
         halal: true, carbs: 38, glutenF: false, vege: true, nutF: false, dairyF: false, fishF: true),
    Meal(name: "Auberine parmigiana lasagne", mealNum: "V02", calories: 466, protein: 20,
         halal: true, carbs: 41, glutenF: true, vege: true, nutF: false, dairyF: true, fishF: true),
    Meal(name: "Zeljanica (cheese & spinach pie)", mealNum: "V03", calories: 445, protein: 15,
         halal: true, carbs: 27, glutenF: false, vege: true, nutF: true, dairyF: false, fishF: true),
    
    Meal(name:"Jerk-seasoned chicken pilaf", mealNum: "GF01", calories: 411, protein: 22,
         halal: true, carbs: 53, glutenF: true, vege: false, nutF: true, dairyF: true, fishF: true),
    Meal(name:"Paneer korma", mealNum: "GF02", calories: 509, protein: 33,
         halal: true, carbs: 21, glutenF: true, vege: true, nutF: true, dairyF: false, fishF: true),
    Meal(name:"Gluten-free salmon pasta", mealNum: "GF03", calories: 587, protein: 24,
         halal: true, carbs: 86, glutenF: true, vege: false, nutF: true, dairyF: false, fishF: false),
    
    Meal(name:"One-pot vegan rice and beans", mealNum: "N01", calories: 507, protein: 13,
         halal: true, carbs: 85, glutenF: true, vege: true, nutF: true, dairyF: true, fishF: true),
    Meal(name:"Lazy cheesy vegetable hotpot", mealNum: "N02", calories: 308, protein: 15,
         halal: true, carbs: 19, glutenF: false, vege: true, nutF: true, dairyF: false, fishF: false),
    Meal(name:"Creamy tarragon chicken bake", mealNum: "N03", calories: 320, protein: 40,
         halal: true, carbs: 18, glutenF: true, vege: false, nutF: true, dairyF: true, fishF: true),
    
    Meal(name:"Peanut butter chicken", mealNum: "DF01", calories: 572, protein: 33,
         halal: true, carbs: 11, glutenF: true, vege: false, nutF: false, dairyF: true, fishF: true),
    Meal(name:"Honey chicken", mealNum: "DF02", calories: 333, protein: 36,
         halal: true, carbs: 35, glutenF: false, vege: true, nutF: true, dairyF: true, fishF: true),
    Meal(name:"Crispy sesame lemon chicken", mealNum: "N03", calories: 280, protein: 26,
         halal: true, carbs: 26, glutenF: false, vege: false, nutF: true, dairyF: true, fishF: true),
    
    Meal(name:"Carbonara with chicken", mealNum: "F01", calories: 758, protein: 40,
         halal: true, carbs: 93, glutenF: false, vege: false, nutF: true, dairyF: false, fishF: true),
    Meal(name:"Chicken Shawarma Quinoa Bowl", mealNum: "F02", calories: 722, protein: 56,
         halal: true, carbs: 6, glutenF: false, vege: false, nutF: false, dairyF: false, fishF: true),
    Meal(name:"Microwave jambalaya", mealNum: "F03", calories: 538, protein: 18,
         halal: true, carbs: 87, glutenF: false, vege: false, nutF: true, dairyF: false, fishF: true)
]



