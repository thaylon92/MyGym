//
//  ViewController+CoreData.swift
//  MyGym
//
//  Created by Thaylon Miller on 17/05/22.
//


import UIKit
import CoreData


extension UIViewController {
    
    var context: NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
}
