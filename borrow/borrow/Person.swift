//
//  Person.swift
//  borrow
//
//  Created by Raphael Brunner on 14.04.16.
//  Copyright © 2016 Raphael Brunner. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class Person : NSManagedObject{
    
    @NSManaged var name:String
    @NSManaged var prename:String?
    @NSManaged var phonenumber:String?
    
}
