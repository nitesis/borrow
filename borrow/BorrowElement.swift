//
//  BorrowElement.swift
//  borrow
//
//  Created by Raphael Brunner on 28.04.16.
//  Copyright © 2016 Raphael Brunner. All rights reserved.
//

import Foundation
import CoreData


class BorrowElement: NSManagedObject {

// Insert code here to add functionality to your managed object subclass
    
    var cat:Category? {
        set { category = newValue!.rawValue }
        get { return Category(rawValue: self.category!) ?? .Sonstiges }
    }
}
