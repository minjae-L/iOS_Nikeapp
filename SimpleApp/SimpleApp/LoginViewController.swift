//
//  ViewController.swift
//  SimpleApp
//
//  Created by 이민재 on 29/06/2020.
//  Copyright © 2020 이민재. All rights reserved.
//

import UIKit    
import Firebase

class LoginViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func goSignUpView(_ sender: Any) {
        guard let vc = self.storyboard?.instantiateViewController(identifier: "signUpView") else {
            return
        }
        
        vc.modalTransitionStyle = UIModalTransitionStyle.coverVertical
        self.present(vc, animated: true)
    }
    @IBAction func loginBtn(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            if user != nil {
                print("login success")
            } else {
                print("login failed")
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let user = Auth.auth().currentUser {
            print("로그인중")
        }
        // Do any additional setup after loading the view.
    }


}

