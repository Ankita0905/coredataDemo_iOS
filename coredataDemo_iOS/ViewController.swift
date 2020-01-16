//
//  ViewController.swift
//  coredataDemo_iOS
//
//  Created by Ankita Jain on 2020-01-16.
//  Copyright © 2020 Ankita Jain. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //First we create an instance of app delegate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        /*
         second we need the context.
         this context is the manager like the location manager, audio manager, etc
         */
        let context = appDelegate.persistentContainer.viewContext
        
        //3rd step write into context
//        let newUser = NSEntityDescription.insertNewObject(forEntityName: "User", into: context)
//        newUser.setValue("Ankita", forKey: "name")
//        newUser.setValue(6477799604, forKey: "phone")
//        newUser.setValue("ankita.jain12342@gmail.com", forKey: "email")
//        newUser.setValue(25, forKey: "age")
//        
//        //4th step - save context
//        do{
//            try context.save()
//            print(newUser, "is saved")
//        }
//        catch
//        {
//            print(error)
//        }
//        
        //fetch data and load it
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        
        //find our data
        do{
            let results = try context.fetch(request)
            if results.count > 0
            {
                for result in results as! [NSManagedObject]
                {
                    if let name = result.value(forKey: "name")
                    {
                        print(name)
                    }
                }
            }
        }
        catch
        {
            print(error)
        }
        
    }


}

