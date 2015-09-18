//
//  EnglishToJapaneseViewController.swift
//  FINAL PROJECT
//
//  Created by Arsenio S Braga Iii on 9/14/15.
//  Copyright (c) 2015 Arsenio S Braga Iii. All rights reserved.
//

import UIKit
import CoreData
import SQLite

class EnglishToJapaneseViewController: UIViewController {
    

    @IBOutlet weak var EnglishText: UITextField!
    @IBOutlet weak var JapaneseText: UITextField!
    var japanese: [TranslatorToJapanese] = []
    
    override func viewDidLoad() {
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let managedObjectContext = appDelegate.managedObjectContext!
        let fetchRequest = NSFetchRequest(entityName: "TranslatorToJapanese")
        var error : NSError?
        japanese = managedObjectContext.executeFetchRequest(fetchRequest, error: &error) as![TranslatorToJapanese]
        println(japanese)
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    func addThing(){
        //japanese.append(TranslatorToJapanese(Japanese: "Sayonara", English: "Good bye"))

        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        var error : NSError?
        if !appDelegate.managedObjectContext!.save(&error){
            println("could not translate")
        }
        else{
            println(" i was here")
                    }
    }
    
    @IBAction func TranslateButton(sender: UIButton) {
        var En = EnglishText.text
        let dbPath = NSSearchPathDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)
        //let db = Database("/Users/asbraga3/Library/Developer/CoreSimulator/Devices/FAF7BB1E-2282-49B9-BF44-8E13DC53E2BC/data/Containers/Data/Application/217FD1D0-E314-43EE-B1B1-DC727E95B18D/Documents/FINAL_PROJECT2.sqlite")
        let db = Database("\(dbPath)/FINAL_PROJECT2.sqlite")
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
