//
//  Extension + LoginVC.swift
//  LoginApp
//
//  Created by Ирина on 13.08.2022.
//

import UIKit

extension LoginViewController {
    func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default))
        present(alertController, animated: true)
    }
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        passwordTF.becomeFirstResponder()
        if passwordTF.text == "" {
        
        }
        
        return true
    }
}
