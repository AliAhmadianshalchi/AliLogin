//
//  LoginViewController.swift
//  AliLogin
//
//  Created by Ali Ahmadian shalchi on 26/07/2021.
//

import UIKit
import FBSDKLoginKit
import FBSDKCoreKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var facebookLoginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpLoginButton()
        
        if let token = AccessToken.current,
                !token.isExpired {
                // User is logged in, do work such as go to next view controller.
            }
    }
    
    func setUpLoginButton() {
        let loginButton = FBLoginButton()
        loginButton.center = view.center
        loginButton.permissions = ["public_profile", "email"]
        view.addSubview(loginButton)
    }

    @IBAction func loginButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func loginWithFaceBookPressed(_ sender: UIButton) {
        
    }
    
}

