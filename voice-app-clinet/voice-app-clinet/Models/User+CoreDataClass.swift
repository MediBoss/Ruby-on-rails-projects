//
//  User+CoreDataClass.swift
//  voice-app-clinet
//
//  Created by Yveslym on 2/1/18.
//  Copyright © 2018 Yveslym. All rights reserved.
//
//

import Foundation
import CoreData
import Moya_ModelMapper
import Mapper

@objc(User)
public class User: NSManagedObject, Mappable {
    public required convenience init(map: Mapper) throws {
        
        let cont = CoreDataStack.singletonInstance.privateContext
        guard let entity = NSEntityDescription.entity(forEntityName: "MessengerModel", in: cont) else { fatalError() }
        
        self.init(entity: entity, insertInto: cont)
        
        email = map.optionalFrom("email")
        firstName = map.optionalFrom("first_name")
        lastName = map.optionalFrom("last_name")
        userName = map.optionalFrom("username")
        authentification = map.optionalFrom("authentication_token")
    }
    

}
