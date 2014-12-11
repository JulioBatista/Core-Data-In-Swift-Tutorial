//
//  ViewController.swift
//  MyLog
//
//  Created by Jameson Quave on 12/11/14.
//  Copyright (c) 2014 JQ Software LLC. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    lazy var managedObjectContext : NSManagedObjectContext? = {
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        if let managedObjectContext = appDelegate.managedObjectContext {
            return managedObjectContext
        }
        else {
            return nil
        }
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let newItem = NSEntityDescription.insertNewObjectForEntityForName("LogItem", inManagedObjectContext: self.managedObjectContext!) as LogItem
        
        newItem.title = "Wrote Core Data Tutorial"
        newItem.itemText = "Wrote and posted a tutorial on the basics of Core Data to blog."
        presentItemInfo()
    }
    
    func presentItemInfo() {
        let fetchRequest = NSFetchRequest(entityName: "LogItem")
        if let fetchResults = managedObjectContext!.executeFetchRequest(fetchRequest, error: nil) as? [LogItem] {
            
            let alert = UIAlertController(title: fetchResults[0].title,
                message: fetchResults[0].itemText,
                preferredStyle: .Alert)
            
            self.presentViewController(alert,
                animated: true,
                completion: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

