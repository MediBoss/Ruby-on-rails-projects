//
//  Message+CoreDataProperties.swift
//  voice-app-clinet
//
//  Created by Yveslym on 2/1/18.
//  Copyright © 2018 Yveslym. All rights reserved.
//
//

import Foundation
import CoreData


extension Message {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Message> {
        return NSFetchRequest<Message>(entityName: "Message")
    }

    @NSManaged public var content: NSData?
    @NSManaged public var date: NSDate?
    @NSManaged public var user: User?

}
