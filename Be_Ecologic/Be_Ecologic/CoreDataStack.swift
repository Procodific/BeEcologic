//
//  CoreDataStack.swift
//  Be_Ecologic
//
//  Created by Eric García on 15/03/15.
//  Copyright (c) 2015 Eric García. All rights reserved.
//

import Foundation
import CoreData

class CoreDataStack {
    let context: NSManagedObjectContext
    let psc: NSPersistentStoreCoordinator
    let model: NSManagedObjectModel
    let store: NSPersistentStore?
    
    init() {
        let bundle = NSBundle.mainBundle()
        let modelURL = bundle.URLForResource("Be_Ecologic", withExtension: "momd")
        
        model = NSManagedObjectModel(contentsOfURL: modelURL!)!
        psc = NSPersistentStoreCoordinator(managedObjectModel: model)
        context = NSManagedObjectContext()
        
        context.persistentStoreCoordinator = psc
        
        let documentsURL = applicationDocumentsDirectory()
        let storeURL = documentsURL.URLByAppendingPathComponent("Be_Ecologic")
        
        let options = [NSMigratePersistentStoresAutomaticallyOption: true]
        
        var error: NSError? = nil
        store = psc.addPersistentStoreWithType(NSSQLiteStoreType, configuration: nil, URL: storeURL, options: options, error: &error)
        
        if store == nil {
            println("Error adding persistent store: \(error)")
            abort()
        }
        
    }
    
    
    func applicationDocumentsDirectory() -> NSURL {
        let fileManager = NSFileManager.defaultManager()
        
        let urls = fileManager.URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask) as [NSURL]
        
        return urls[0]
    }
    
    func saveContext() {
        var error: NSError? = nil
        
        if context.hasChanges && !context.save(&error) {
            println("Could not save: \(error), \(error?.userInfo)")
        }
    }
}
