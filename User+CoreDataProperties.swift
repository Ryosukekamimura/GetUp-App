//
//  User+CoreDataProperties.swift
//  
//
//  Created by 神村亮佑 on 2020/07/07.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var sleeptime: Date
    @NSManaged public var getuptime: Date

}

extension User: Identifiable{
    
}
