//
//  ViewController.swift
//  DeliveryService
//
//  Created by 김진수 on 2023/04/04.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwardTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    var loginVo = LoginVO()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        idTextField.delegate = self
        passwardTextField.delegate = self
        setUI()
    }
    
    func setUI() {
        loginButton.backgroundColor = UIColor(displayP3Red: 175/255, green: 212/255, blue: 133/255, alpha: 1)
        loginButton.titleLabel?.textColor = .white
    }


}

extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            if textField.text != "" {
                loginVo.idValue = textField.text
                print(loginVo.idValue!)
                passwardTextField.becomeFirstResponder()
            }
            if textField == passwardTextField, passwardTextField.text != ""{
                loginVo.passwardValue = textField.text
                print(loginVo.passwardValue!)
                passwardTextField.resignFirstResponder()
            }
            return true
         }
}
