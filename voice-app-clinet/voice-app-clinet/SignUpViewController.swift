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
    @IBOutlet weak var lastNameTextField : UITextField!
    
    @IBOutlet weak var emailAddressTextField : UITextField!
    @IBOutlet weak var userNameTextField : UITextField!
    @IBOutlet weak var passwordTextField : UITextField!
    @IBOutlet weak var confirmPasswordTextField : UITextField!
    @IBOutlet weak var registerButton: UIButton!
    
    // - MARK: PROPERTIES
    let placeHolder = ["un":"Username", "pw":"Password", "em":"Email","cp":"Confirm Password","fn":"First Name","ln":"Last Name"]
    
    // - MARK: IBACTIONS
    @IBAction func registerButtonTyped(_ sender: Any){
        
        guard let firstName = self.firstNameTextField.text, let email = self.emailAddressTextField.text, let username = self.userNameTextField.text, let password = self.passwordTextField.text, let confirmPassword = self.confirmPasswordTextField.text else {return}
        
        
    }
    
    // - MARK: METHODS
    
    func verifyPassword() -> Bool{
        
        guard let password = self.passwordTextField.text, let confirmPassword =     self.confirmPasswordTextField.text else {return false}
        
        if password == confirmPassword{
            if !password.isEmpty && !confirmPassword.isEmpty{
                return true
            }
        }
        return false
    }
    
    // - MARK - VIEW CONTROLLER LIFE CYCLE
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Register"   // Puts a title on top of this view controller
        
        // Unables the view controller so that user will not register until the passcodes match
        self.registerButton.isEnabled = false
        
        confirmPasswordTextField.delegate = self
        self.registerButton.alpha = 0.5
        //passwordTextField.delegate = self
    }
}


extension SignUpViewController: UITextFieldDelegate{
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        
        if self.verifyPassword(){
            self.registerButton.isEnabled = true
            self.registerButton.alpha = 1
        }
        else{
            self.confirmPasswordTextField.shake()
            self.registerButton.alpha = 0.5
            self.registerButton.isEnabled = false
        }
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.confirmPasswordTextField.placeholder = nil
        self.passwordTextField.placeholder = nil
    }
    
}




















