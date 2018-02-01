//
//  LoginViewController.swift
//  voice-app-clinet
//
//  Created by Yveslym on 2/1/18.
//  Copyright © 2018 Yveslym. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    // - MARK: PROPERTIES
    var currentUser = CoreDataStack.singletonInstance
    
    // - MARK: IBOUTLETS
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    // - MARK: IBACTIONS
    @IBAction func loginButtonTapped(_ sender: Any){
        
    }
    
    @IBAction func registerButtonTapped(_ sender: Any){
        
    }
    
    @IBAction func forgotPasswordButtonTapped(_ sender: Any){
        
    }
    
    // - MARK: METHODS
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
}
