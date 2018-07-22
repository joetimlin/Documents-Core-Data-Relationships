//
//  Category+CoreDataProperties.swift
//  Documents
//
//  Created by Joe Timlin on 7/22/18.
//  Copyright © 2018 Joe Timlin. All rights reserved.
//
//

import Foundation
import CoreData


extension Category {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Category> {
        return NSFetchRequest<Category>(entityName: "Category")
    }

    @NSManaged public var title: String?
    @NSManaged public var rawDocuments: NSOrderedSet?

}

// MARK: Generated accessors for rawDocuments
extension Category {

    @objc(insertObject:inRawDocumentsAtIndex:)
    @NSManaged public func insertIntoRawDocuments(_ value: Doc, at idx: Int)

    @objc(removeObjectFromRawDocumentsAtIndex:)
    @NSManaged public func removeFromRawDocuments(at idx: Int)

    @objc(insertRawDocuments:atIndexes:)
    @NSManaged public func insertIntoRawDocuments(_ values: [Doc], at indexes: NSIndexSet)

    @objc(removeRawDocumentsAtIndexes:)
    @NSManaged public func removeFromRawDocuments(at indexes: NSIndexSet)

    @objc(replaceObjectInRawDocumentsAtIndex:withObject:)
    @NSManaged public func replaceRawDocuments(at idx: Int, with value: Doc)

    @objc(replaceRawDocumentsAtIndexes:withRawDocuments:)
    @NSManaged public func replaceRawDocuments(at indexes: NSIndexSet, with values: [Doc])

    @objc(addRawDocumentsObject:)
    @NSManaged public func addToRawDocuments(_ value: Doc)

    @objc(removeRawDocumentsObject:)
    @NSManaged public func removeFromRawDocuments(_ value: Doc)

    @objc(addRawDocuments:)
    @NSManaged public func addToRawDocuments(_ values: NSOrderedSet)

    @objc(removeRawDocuments:)
    @NSManaged public func removeFromRawDocuments(_ values: NSOrderedSet)

}
