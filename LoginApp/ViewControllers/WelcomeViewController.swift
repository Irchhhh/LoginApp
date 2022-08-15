//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Ирина on 13.08.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var userNameLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = ("Hello, \(userName ?? "")")
    }
    
}
