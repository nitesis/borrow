//
//  Person+CoreDataProperties.swift
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

extension Person {

    @NSManaged var name: String?
    @NSManaged var phonenumber: String?
    @NSManaged var prename: String?
    @NSManaged var lend: NSSet?

}
