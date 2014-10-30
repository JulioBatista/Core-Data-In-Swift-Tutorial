//
//  ViewController.swift
//  MyLog
//
//  Created by Jameson Quave on 10/30/14.
//  Copyright (c) 2014 Jameson Quave. All rights reserved.
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
        newItem.itemText = "Wrote and post a tutorial on the basics of Core Data to blog."
        presentItemInfo()
    }
    
    func presentItemInfo() {
        let fetchRequest = NSFetchRequest(entityName: "LogItem")
        if let fetchResults = managedObjectContext!.executeFetchRequest(fetchRequest, error: nil) as? [LogItem] {
            
            let alert = UIAlertView()
            alert.title = fetchResults[0].title
            alert.message = fetchResults[0].itemText
            alert.show()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

