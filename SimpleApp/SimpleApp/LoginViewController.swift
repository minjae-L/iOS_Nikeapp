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
    @IBAction func goSignUpView(_ sender: Any) {
        guard let vc = self.storyboard?.instantiateViewController(identifier: "signUpView") else {
            return
        }
        vc.modalTransitionStyle = UIModalTransitionStyle.coverVertical
        self.present(vc, animated: true)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

