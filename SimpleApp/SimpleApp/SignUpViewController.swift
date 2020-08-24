//
//  SignUpViewController.swift
//  SimpleApp
//
//  Created by 이민재 on 16/08/2020.
//  Copyright © 2020 이민재. All rights reserved.
//

import UIKit
import Firebase

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
//    MARK: - 정규식 이용하여 회원가입 조건 적용 함수들
    
    func isValidEmail(email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    func checkEmail() {
        if emailField.text! == "" {
            alertEmailMsg.isHidden = false
            alertEmailMsg.text = "이메일을 입력해주세요."
        } else if isValidEmail(email: emailField.text!) == false {
            alertEmailMsg.isHidden = false
            alertEmailMsg.text = "이메일을 형식에 맞게 작성해주세요."
        } else {
            alertEmailMsg.isHidden = true
        }
    }
    
    func isValidPassword(password: String) -> Bool {
        let passwordRegEx = "^(?=.*[A-Za-z])(?=.*\\d)(?=.*[$@$!%*#?&])[A-Za-z\\d$@$!%*#?&]{8,16}$"
        let passwordPred = NSPredicate(format: "SELF MATCHES %@", passwordRegEx)
        return passwordPred.evaluate(with: password)
    }
    
    func checkPassword() {
        if passwordField.text! == "" {
            alertPwdMsg.isHidden = false
            alertPwdMsg.text = "비밀번호를 입력해주세요."
        } else if isValidPassword(password: passwordField.text!) == false{
            alertPwdMsg.isHidden = false
            alertPwdMsg.text = "비밀번호 형식에 맞게 입력해주세요."
        } else {
            alertPwdMsg.isHidden = true
        }
    }
    
    func isSamePassword() {
        if repeatPasswordField.text! != "" {
            if repeatPasswordField.text! != passwordField.text! {
                alertRepeatPwdMsg.isHidden = false
                alertRepeatPwdMsg.text = "비밀번호를 다시 확인해주세요."
            } else {
                alertRepeatPwdMsg.isHidden = true
            }
        }
    }
    
    func isValidName(name: String) -> Bool {
        let nameRegEx = "^[가-힣]{2,10}$"
        
        let namePred = NSPredicate(format: "SELF MATCHES %@", nameRegEx)
        return namePred.evaluate(with: name)
    }
    
    func checkName() {
        if usernameField.text! == "" {
            alertUsernameMsg.isHidden = false
            alertUsernameMsg.text = "이름을 입력해주세요."
        } else if usernameField.text!.count == 1 {
            alertUsernameMsg.isHidden = false
            alertUsernameMsg.text = "최소 2자 이상 입력해주세요."
        } else if isValidName(name: usernameField.text!) == false {
            alertUsernameMsg.isHidden = false
            alertUsernameMsg.text = "정확히 한글로 입력해주세요."
        } else {
            alertUsernameMsg.isHidden = true
        }
    }
    
    func isValidPhoneNum(pNum: String) -> Bool{
        let pNumRegEx = "^[0-9]{9,12}$"
        
        let pNumPred = NSPredicate(format: "SELF MATCHES %@", pNumRegEx)
        return pNumPred.evaluate(with: pNum)
    }
    
    func checkPnum() {
        if userPhoneNumberField.text! == "" {
            alertPnumMsg.isHidden = false
            alertPnumMsg.text = "휴대폰번호를 입력해주세요."
        } else if isValidPhoneNum(pNum: userPhoneNumberField.text!) == false {
            alertPnumMsg.isHidden = false
            alertPnumMsg.text = "정확히 숫자로 입력해주세요.(- 없이)"
        } else {
            alertPnumMsg.isHidden = true
        }
    }
    
    @IBAction func signUpBtn(_ sender: Any) {
        self.checkEmail()
        self.checkPassword()
        self.isSamePassword()
        self.checkName()
        self.checkPnum()
//        self.presentSignUpAlert()
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
