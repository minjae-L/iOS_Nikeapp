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
                let vc: UIViewController = self.storyboard!.instantiateViewController(identifier: "mainVC")
                vc.modalPresentationStyle = .overFullScreen
                self.present(vc, animated: true, completion: nil)
            } else {
                print("login failed")
                self.presentSignInFailed()
            }
        }
    }
    func presentSignInFailed() {
        let alert = UIAlertController(title: "로그인 실패", message: "아이디와 비밀번호가 일치하지 않습니다.", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "확인", style: .default){
            (action: UIAlertAction) -> Void in
            self.dismiss(animated: true, completion: nil)
        }
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

