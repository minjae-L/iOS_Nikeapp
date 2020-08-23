//
//  SignUpViewController.swift
//  SimpleApp
//
//  Created by 이민재 on 16/08/2020.
//  Copyright © 2020 이민재. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var repeatPasswordField: UITextField!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var userPhoneNumberField: UITextField!
    
    @IBOutlet weak var alertEmailMsg: UILabel!
    @IBOutlet weak var alertPwdMsg: UILabel!
    @IBOutlet weak var alertRepeatPwdMsg: UILabel!
    @IBOutlet weak var alertUsernameMsg: UILabel!
    @IBOutlet weak var alertPnumMsg: UILabel!
    
    func hideAlertMsg () {
        alertEmailMsg.isHidden = true
        alertPwdMsg.isHidden = true
        alertRepeatPwdMsg.isHidden = true
        alertUsernameMsg.isHidden = true
        alertPnumMsg.isHidden = true
    }
    
    @IBAction func signUpBtn(_ sender: Any) {
        self.presentSignUpAlert()
    }
    func moveToLoginView() {
       self.presentingViewController?.dismiss(animated: true)
        
    }
    func presentSignUpAlert() {
        let alert = UIAlertController(title: "회원가입", message: "회원가입 완료", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "확인", style: .default){ (action: UIAlertAction) -> Void in
            self.moveToLoginView()
        }
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        hideAlertMsg ()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
