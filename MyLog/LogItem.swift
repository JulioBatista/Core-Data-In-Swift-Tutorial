//
//  LogItem.swift
//  MyLog
//
//  Created by Jameson Quave on 10/30/14.
//  Copyright (c) 2014 Jameson Quave. All rights reserved.
//

import Foundation
import CoreData

class LogItem: NSManagedObject {

    @NSManaged var itemText: String
    @NSManaged var title: String

}
