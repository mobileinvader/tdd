//
//  ViewController.swift
//  PasswordCheckDemo
//
//  Created by Kristijan Kralj on 18/08/2019.
//  Copyright © 2019 Kristijan Kralj. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnSignUpDidTouch(_ sender: Any) {
        let registrationViewModel = RegistrationViewModel()
        
        let passwordResult = registrationViewModel.isPasswordSecure(txtPassword.text!)
        let message = passwordResult ? "Password is ok" : "Password is not ok"
        
        let alert = UIAlertController(title: "Registration result", message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default)
        alert.addAction(ok)
        DispatchQueue.main.async(execute: { self.present(alert, animated: true) })
    }
}

