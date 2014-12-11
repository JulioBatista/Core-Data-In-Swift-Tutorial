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

}
