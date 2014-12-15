//
//  LogItem.swift
//  MyLog
//
//  Created by Jameson Quave on 12/11/14.
//  Copyright (c) 2014 JQ Software LLC. All rights reserved.
//

import Foundation
import CoreData

class LogItem: NSManagedObject {

    @NSManaged var itemText: String
    @NSManaged var title: String
    @NSManaged var fullTitle: String
    
    class func createInManagedObjectContext(moc: NSManagedObjectContext, title: String, fullTitle: String, text: String) -> LogItem {
        let newItem = NSEntityDescription.insertNewObjectForEntityForName("LogItem", inManagedObjectContext: moc) as LogItem
        newItem.title = title
        newItem.itemText = text
        println("set title")
        newItem.fullTitle = fullTitle
        println("success in set title")
        
        return newItem
    }

}
