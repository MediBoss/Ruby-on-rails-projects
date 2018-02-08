//
//  LoginViewController.swift
//  voice-app-clinet
//
//  Created by Yveslym on 2/1/18.
//  Copyright © 2018 Yveslym. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, messengerDelegate {

    // - MARK: PROPERTIES
    var stack = CoreDataStack.singletonInstance
    var delegate : messengerDelegate!
    
    // - MARK: IBOUTLETS
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    // - MARK: IBACTIONS
    @IBAction func loginButtonTapped(_ sender: Any){
        
        guard let email = email.text, let password = password.text else {return}
        
        let manager = MessengerMananger()
        
        
        manager.login(email: email, password: password, success: { (user) in
            self.stack.saveTo(context: self.stack.viewContext)
            
            UserDefaults.standard.set(true, forKey: "everlogin")
            
            self.performSegue(withIdentifier: "main", sender: nil)
            
        }, error: { (error) in
            
        }) { (code) in
            switch code{
            case 400?:
                self.delegate.alertMessage(title: "bad login", message: "check your email and password")
                
            default:
                print("boummerr")
            }
        }
        
    }
    
    @IBAction func forgotPasswordButtonTapped(_ sender: Any){
        
    }
    
    // - MARK: METHODS
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
}
