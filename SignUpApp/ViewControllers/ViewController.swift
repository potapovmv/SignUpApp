//
//  ViewController.swift
//  SignUpApp
//
//  Created by Admin1 on 29.03.2021.
//  Copyright © 2021 potapov_potapov. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    let userName = UserInfo()
    let password = UserInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTF.autocorrectionType = .no
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      //  let tabBarController = segue.destination as! UITabBarController
      //  for viewController in viewControllers! {
        //    if let welcomeVC = viewController as? WelcomeViewController {
       // welcomeVC.welcomeLabelText = "Welcome, \(usernameTF.text ?? "No name")"
       // }
       // }
    //}
    
    @IBAction func loginButton(_ sender: UIButton) {
        if usernameTF.text != userName.login || passwordTF.text != password.password  {
            showAlert(title: "Ошибка!", message: "Неверный логин или пароль", textField: passwordTF)
        }
       
    }
    @IBAction func UserNameButton(_ sender: UIButton) {
        showAlert(title: "Упссссс!" , message: "Ваш логин: Admin")
    }
    
    @IBAction func paswwordButton(_ sender: UIButton) {
        showAlert(title: "Упссссс!" , message: "Ваш пароль: qwerty123")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue){
        usernameTF.text = nil
        passwordTF.text = nil
    }
    
  
    private func showAlert(title: String, message: String, textField: UITextField? = nil){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
        textField?.text = ""
        alert.addAction(okButton)
        present(alert, animated: true)
        }
    
    
}

