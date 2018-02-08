//
//  ClientManager.swift
//  voice-app-clinet
//
//  Created by Yveslym on 1/28/18.
//  Copyright © 2018 Yveslym. All rights reserved.
//

import Foundation
import Moya
import Moya_ModelMapper

struct MessengerMananger{
    
    /// function to login the user
    func login(email:String, password: String, success successCallback: @escaping (Users?)-> Void, error errorCallback: @escaping(Error?)-> Void,statuCodeCallback: @escaping(Int?)-> Void){
        
        NetworkAdapter.request(target: .login(email: email, password: password), success: { (response) in
            do{
                let user = try response.map(to: Users.self)
                successCallback(user)
                errorCallback(nil)
            }
            catch{
                
            }
        }, error: { (error) in
            errorCallback(error)
        }, failure: { (error) in
            errorCallback(error)
        }) { (statucode) in
            statuCodeCallback(statucode!)
        }
    }
    func signUp(email: String, password: String, passwordConfirmation: String, firstName: String, lastName: String, username: String, success successCallback:@escaping(Users?)-> Void, error errorCallback: @escaping(Error?)-> Void, statuCodeCallback: @escaping(Int?)-> Void){
        
        NetworkAdapter.request(target: .signUp(email: email, password: password, passwordConfirmation: passwordConfirmation, firstName: firstName, lastName: lastName, userName: username), success: { (response) in
            
            do{
                let user = try response.map(to: Users.self)
                successCallback(user)
                errorCallback(nil)
                
            }catch{
                print("could not parse user")
            }
        }, error: { (error) in
            errorCallback(error)
        }, failure: { (error) in
            errorCallback(error)
        }) { (statucode) in
            statuCodeCallback(statucode!)
        }
    }
    func logout(email: String, authentication: String, success successCallback: @escaping(Int?)-> Void,  statuCodeCallback: @escaping(Int?)-> Void){
        
        NetworkAdapter.request(target: .logout(email: email, authentication: authentication), success: { (response) in
             successCallback(response.statusCode)
        }, error: { (error) in
            
        }, failure: { (error) in
            
        }) { (status) in
            statuCodeCallback(status)
        }
        
    }
}



















