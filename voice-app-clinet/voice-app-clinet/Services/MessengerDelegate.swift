//
//  MessengerDelegate.swift
//  voice-app-clinet
//
//  Created by Yveslym on 2/7/18.
//  Copyright © 2018 Yveslym. All rights reserved.
//

import Foundation
import UIKit

protocol messengerDelegate: class{
    func alertMessage(title: String, message: String)
}
extension messengerDelegate where Self: UIViewController{
 
    func alertMessage(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "cancel", style: .cancel, handler: nil)
        alert.addAction(cancel)
        
        self.present(alert, animated: true, completion: nil)
        
}
}
