//
//  ViewController.swift
//  iOsDataPersistence
//
//  Created by Miguel Rueda on 04/07/20.
//  Copyright © 2020 Miguel Rueda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var departmentTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameTextField.text
            = UserDefaults.standard.string(forKey: "name")
        emailTextField.text
        = UserDefaults.standard.string(forKey: "email")
        departmentTextField.text
        = UserDefaults.standard.string(forKey: "department")
    }

    @IBAction func saveButtonTapped(_ sender: Any) {
        UserDefaults.standard.set(nameTextField.text, forKey: "name")
        UserDefaults.standard.set(emailTextField.text, forKey: "email")
        UserDefaults.standard.set(departmentTextField.text, forKey: "department")
    }
}

