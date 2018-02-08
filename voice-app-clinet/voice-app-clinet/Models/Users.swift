//
//  Users.swift
//  voice-app-clinet
//
//  Created by Yveslym on 2/8/18.
//  Copyright © 2018 Yveslym. All rights reserved.
//

import Foundation
import Moya_ModelMapper
import Moya
import Mapper

struct Users: Mappable{
   
    let firstName: String?
    let lastName: String?
    let userName: String?
    let authentication: String?
    let id: Int
    let email: String?
    
    init(map: Mapper) throws {
         id = map.optionalFrom("id")!
        email = map.optionalFrom("email")
        firstName = map.optionalFrom("first_name")
        lastName = map.optionalFrom("last_name")
        userName = map.optionalFrom("username")
        authentication = map.optionalFrom("authentication_token")
    }
    
}


