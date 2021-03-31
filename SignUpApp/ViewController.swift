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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTF.autocorrectionType = .no
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {return}
        welcomeVC.welcomeLabelText = "Welcome, \(usernameTF.text ?? "No name")"
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        if usernameTF.text != "Admin" || passwordTF.text != "qwerty123"  {
            let loginAlert = UIAlertController(title: "Ошибка!", message: "Неверный логин или пароль", preferredStyle: .alert)
            let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
            loginAlert.addAction(okButton)
            present(loginAlert, animated: true, completion: nil)
            passwordTF.text = nil
        }
       
    }
    @IBAction func UserNameButton(_ sender: UIButton) {
        let usernameAlert = UIAlertController(title: "Упссссс!", message: "Ваш логин: Admin", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
        usernameAlert.addAction(okButton)
        present(usernameAlert, animated: true, completion: nil)
    }
    
    @IBAction func paswwordButton(_ sender: UIButton) {
        let passwordAlert = UIAlertController(title: "Упссссс!", message: "Ваш пароль: qwerty123", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
        passwordAlert.addAction(okButton)
        present(passwordAlert, animated: true, completion: nil)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue){
        usernameTF.text = nil
        passwordTF.text = nil
    }
}

