//
//  Doc+CoreDataClass.swift
//  Documents
//
//  Created by Joe Timlin on 7/22/18.
//  Copyright © 2018 Joe Timlin. All rights reserved.
//
//

import UIKit
import CoreData

@objc(Doc)
public class Doc: NSManagedObject {
    var date: Date? {
        get {
            return rawModifiedDate as Date?
        }
        set {
            rawModifiedDate = newValue as NSDate?
        }
    }
    
    convenience init?(name: String?, content: String, size: Int64, date: Date?) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        guard let context = appDelegate?.persistentContainer.viewContext else {
            return nil
        }
        self.init(entity: Doc.entity(), insertInto: context)
        
        self.name = name
        self.content = content
        self.date = date
        self.size = size
    }
    
}
