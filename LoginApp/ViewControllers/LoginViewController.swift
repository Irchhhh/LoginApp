//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Ирина on 13.08.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    let userName = "User"
    let password = "Password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userName
    }
    
    @IBAction func logInAction(_ sender: Any) {
        if userNameTF.text != userName && passwordTF.text != password {
            showAlert(title: "Invalid login or password", message: "Please,enter correct login and password")
        }
    }
    
    @IBAction func helpUserName(_ sender: Any) {
        showAlert(title: "Your User Name", message: "User")
    }
    
    @IBAction func helpPassword(_ sender: Any) {
        showAlert(title: "Your Password", message: "Password")
    }
    
  
}

extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default))
        present(alertController, animated: true)
    }
}
