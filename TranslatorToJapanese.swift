//
//  TranslatorToJapanese.swift
//  FINAL PROJECT
//
//  Created by Arsenio S Braga Iii on 9/16/15.
//  Copyright (c) 2015 Arsenio S Braga Iii. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class TranslatorToJapanese: NSManagedObject {

    @NSManaged var english: String
    @NSManaged var japanese: String
    
    override init(entity : NSEntityDescription, insertIntoManagedObjectContext context: NSManagedObjectContext?){
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let TranslateEntity = NSEntityDescription.entityForName("TranslatorToJapanese", inManagedObjectContext: appDelegate.managedObjectContext!)
        super.init(entity: TranslateEntity!, insertIntoManagedObjectContext: appDelegate.managedObjectContext!)
        
    
    }
    
    init(Japanese: String, English: String) {
        
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let japaneseEntity = NSEntityDescription.entityForName("TranslatorToJapanese", inManagedObjectContext: appDelegate.managedObjectContext!)
        
        super.init(entity: japaneseEntity!, insertIntoManagedObjectContext: appDelegate.managedObjectContext!)
        
        self.english = English
        self.japanese = Japanese

    }
}