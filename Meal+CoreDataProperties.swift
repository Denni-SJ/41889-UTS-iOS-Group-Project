//
//  Meal+CoreDataProperties.swift
//  iOS Group Project
//
//  Created by Gavin josh Logronio on 10/6/2023.
//
//

import Foundation
import CoreData


extension Meal {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Meal> {
        return NSFetchRequest<Meal>(entityName: "Meal")
    }

    @NSManaged public var name: String?
    @NSManaged public var mealNum: String?
    @NSManaged public var calories: Int64
    @NSManaged public var protein: Int64
    @NSManaged public var halal: Bool
    @NSManaged public var carbs: Int64
    @NSManaged public var glutenF: Bool
    @NSManaged public var vege: Bool
    @NSManaged public var nutF: Bool
    @NSManaged public var dairyF: Bool
    @NSManaged public var fishF: Bool

}

extension Meal : Identifiable {

}
