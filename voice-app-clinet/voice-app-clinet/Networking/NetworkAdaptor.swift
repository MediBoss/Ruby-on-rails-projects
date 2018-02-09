//
//  NetworkAdaptor.swift
//  voice-app-clinet
//
//  Created by Yveslym on 1/28/18.
//  Copyright © 2018 Yveslym. All rights reserved.
//

import Foundation
import Moya

struct NetworkAdapter{
    static let provider = MoyaProvider<Client>()
    
    static func request (target: Client, success successCallBack: @escaping(Response) -> Void, error errorCallBack: @escaping(Swift.Error)-> Void, failure falilureCallBack: @escaping(MoyaError)-> Void, statuCode: @escaping (Int?)-> Void){
        provider.request(target){(result) in
            switch result{
                
            case .success(let response):
                if response.statusCode >= 200 && response.statusCode <= 300{
                    return successCallBack(response)
                }
                else{
                    //fatalError("code error not api")
                    let resp = String(data: response.data, encoding: .utf8)
                    statuCode(response.statusCode)
                
                    print(resp!)
                }
            case .failure(let error):
                errorCallBack(error)
            }
        }
    }
}


