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
//        newUser.setValue("Honey", forKey: "name")
//        newUser.setValue(6477799604, forKey: "phone")
//        newUser.setValue("honey.jain12342@gmail.ca", forKey: "email")
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

        //fetch data and load it
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
       //request.predicate = NSPredicate(format: "email contains %@", ".com")
       // request.predicate = NSPredicate(format: "name=%@", "Honey")
        request.returnsObjectsAsFaults = false
        
        //find our data
        do{
            let results = try context.fetch(request)
            if results.count > 0
            {
                for result in results as! [NSManagedObject]
                {
//                    if let name = result.value(forKey: "name")
//                    {
//                        print(name)
//                    }
//                    if let email = result.value(forKey: "email")
//                    {
//                        print(email)
//                        // update the email
//                        let email = email as! String
//
//                        //update core data
//                        result.setValue(email.replacingOccurrences(of: ".ca", with: ".com"), forKey: "email")
//                        do{
//                                    try context.save()
//                                    print(result, "is saved")
//                                }
//                                catch
//                                {
//                                    print(error)
//                                }
                    //delete the user
                    if let name =  result.value(forKey: "name")
                    {
//                        context.delete(result)
//                        do{
//                            try context.save()
//                            print(result, "is saved")
//                        }
//                        catch
//                        {
//                        print(error)
//                        }
                        
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

