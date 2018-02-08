//
//  Route.swift
//  voice-app-clinet
//
//  Created by Yveslym on 1/28/18.
//  Copyright © 2018 Yveslym. All rights reserved.
//

import Foundation
import Moya

enum Client{
    case login(email: String, password: String)
    case logout(email: String, authentication: String)
    case signUp(email: String, password: String, passwordConfirmation: String, firstName: String, lastName:String,userName:String)
    
}

extension Client: TargetType{
    var baseURL: URL {
        return URL(string: "https://chores-server.herokuapp.com")!
    }
    
    var path: String {
        switch self{
            
        case .login:
            return "/v1/sessions"
        case .logout:
            return "/v1/sessions"
        case .signUp:
             return "/v1/new_account"
        }
    }
    
    var method: Moya.Method {
        switch self{
            
        case .login:
            return .post
        case .logout:
            return .delete
        case .signUp:
            return .post
        }
    }
    
    var sampleData: Data {
         return "{}".data(using: String.Encoding.utf8)!
    }
    
    var task: Task {
        switch self{
            
        case .login(let email, let password):
            return .requestParameters(parameters: ["email": email, "password": password], encoding: URLEncoding.queryString)

        case .logout:
            return .requestPlain

        case .signUp(let email, let password, let passwordConfirmation, let firstName, let lastName, let userName):
           return .requestParameters(parameters: ["email": email, "password": password, "last_name": lastName, "username": userName, "first_name": firstName, "password_confirmation": passwordConfirmation], encoding: URLEncoding.queryString)
        }
    }
    
    var headers: [String : String]? {
        switch self{
            
        case .login:
            return ["Content-Type" : "application/json"]
        
        case .signUp:
            return ["Content-Type" : "application/json"]
       
        case .logout(let email, let authentication):
            return ["x-User-Email" : email,
                    "x-User-Token" : authentication]
        }
    }
}
