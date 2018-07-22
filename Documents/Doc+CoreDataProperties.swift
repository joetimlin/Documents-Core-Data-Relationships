//
//  Doc+CoreDataProperties.swift
//  Documents
//
//  Created by Joe Timlin on 7/22/18.
//  Copyright © 2018 Joe Timlin. All rights reserved.
//
//

import Foundation
import CoreData


extension Doc {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Doc> {
        return NSFetchRequest<Doc>(entityName: "Doc")
    }

    @NSManaged public var content: String?
    @NSManaged public var name: String?
    @NSManaged public var rawModifiedDate: NSDate?
    @NSManaged public var size: Int64
    @NSManaged public var category: Category?

}
