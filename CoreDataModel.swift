//
//  CoreDataModel.swift
//  GetupApp
//
//  Created by 神村亮佑 on 2020/07/07.
//  Copyright © 2020 神村亮佑. All rights reserved.
//


import UIKit
import CoreData

class CoreDataModel{
    // Persistent Container
    //AppDelegateに定義されたものを参照
    private static var persistentContainer: NSPersistentCloudKitContainer! = (UIApplication.shared.delegate as? AppDelegate)?.PersistentContainer
    
    //Managed Object Context
    //Contextを脱却
    
    private static var context: NSManagedObjectContext{
        return persistentContainer.viewContext
    }
    
    //インスタンスを生成させないためのprivate化
    //初期化
    private init(){
        
    }
    
    //挿入
    static func insert(_ object: NSManagedObject){
        context.insert(object)
    }
    
    //削除
    static func delete(_ object: NSManagedObject){
        context.delete(object)
    }
    
    //保存
    static func save(){
        persistentContainer.saveContext(context: context)
    }
    
    //取り消し
    static func rollback(){
        persistentContainer.rollback(context: context)
    }

}

extension CoreDataModel{
    
    //ユーザー情報一覧を取得
    static func allUsers() -> [User] {
        let request = NSFetchRequest<NSFetchRequest>(entityName: "User")
        
        do{
            return try context.fetch(request) as! [User]
        }
        catch{
            fatalError()
        }
    }
    
    static func newUser() -> User{
        let entity = NSEntityDescription.entity(forEntityName: "User", in: context)!
        let user = User(entity: entity, insertInto: nil)
        return user
    }
}
