//
//  SignUpViewController.swift
//  voice-app-clinet
//
//  Created by Assumani, Medi on 2/1/18.
//  Copyright © 2018 Yveslym. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    // - MARK: IBOUTLET
    @IBOutlet weak var firstNameTextField : UITextField!
    @IBOutlet weak var emailAddressTextField : UITextField!
    @IBOutlet weak var userNameTextField : UITextField!
    @IBOutlet weak var passwordTextField : UITextField!
    @IBOutlet weak var confirmPasswordTextField : UITextField!
    
    // - MARK: PROPERTIES
    
    
    // - MARK: IBACTIONS
    @IBAction func registerButtonTyped(_ sender: Any){
        
        guard let firstName = self.firstNameTextField.text, let email = self.emailAddressTextField.text, let username = self.userNameTextField.text, let password = self.passwordTextField.text, let confirmPassword = self.confirmPasswordTextField.text else {return}
        
        
    }
    
    
    // - MARK: PROPERTIES
    
    
    // - MARK: METHODS
    /*
    func verifyPassword(password: String, confirmPassword: String) -> Bool{
        
        if(password != confirmPassword){
            
            
        }
        
    }
 */
    
    // - MARK - VIEW CONTROLLER LIFE CYCLE
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
