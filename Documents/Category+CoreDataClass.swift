//
//  Category+CoreDataClass.swift
//  Documents
//
//  Created by Joe Timlin on 7/22/18.
//  Copyright © 2018 Joe Timlin. All rights reserved.
//
//

import UIKit
import CoreData

@objc(Category)
public class Category: NSManagedObject {
    var documents: [Doc]? {
        return self.rawDocuments?.array as? [Doc]
    }
    
    convenience init?(title: String) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        guard let context = appDelegate?.persistentContainer.viewContext
            else {
                return nil
        }
        
        self.init(entity: Category.entity(), insertInto: context)
        
        self.title = title
    }
    
}
