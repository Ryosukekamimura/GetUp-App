//
//  NSPersistentCloudKitContainer+Extension.swift
//  GetupApp
//
//  Created by 神村亮佑 on 2020/07/07.
//  Copyright © 2020 神村亮佑. All rights reserved.
//

import CoreData

extension NSPersistentCloudKitContainer{
    
    
    //保存
    func saveContext(context: NSManagedObjectContext? = nil){
        let context = context ?? viewContext
        guard context.hasChanges else {
            return
        }
        do{
            try context.save()
        }
        catch let error as NSError{
            print("Error: \(error)")
        }
    }
    
    //取り消し
    func roolback(context: NSManagedObjectContext? = nil){
        let context = context ?? viewContext
        
        //変更がなければ、何もしない
        guard context.hasChanges else{
            return
        }
        context.rollback()
    }
}
