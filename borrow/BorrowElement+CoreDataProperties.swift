//
//  BorrowElement+CoreDataProperties.swift
//  borrow
//
//  Created by Raphael Brunner on 28.04.16.
//  Copyright © 2016 Raphael Brunner. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension BorrowElement {

    @NSManaged var backDate: NSDate?
    @NSManaged var category: String?
    @NSManaged var lendDate: NSDate?
    @NSManaged var title: String?
    @NSManaged var done: NSNumber?
    @NSManaged var borrowedBy: Person?

}
