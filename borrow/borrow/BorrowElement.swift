//
//  BorrowElement.swift
//  borrow
//
//  Created by Raphael Brunner on 14.04.16.
//  Copyright © 2016 Raphael Brunner. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class BorrowEelement : NSManagedObject {
    
    @NSManaged var title:String
    @NSManaged var category:String?
    
    var cat:Category? {
        set { category = newValue!.rawValue }
        get { return Category(rawValue: self.category!) ?? .Sonstiges }
    }
    
    @NSManaged var lendDate:NSDate
    @NSManaged var backDate:NSDate?
    
    func setCategory(cat:Category) -> (){
        category = cat.rawValue
    }
    
}
