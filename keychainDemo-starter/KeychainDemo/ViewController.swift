//
//  ViewController.swift
//  KeychainDemo
//
//  Created by Adriana González Martínez on 6/16/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageTextfield: UITextField!
    let keychain = KeychainWrapper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Keychain Demo 🔐"
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    
    @IBAction func saveBtnPressed(_ sender: Any) {
        if let ourMessage = messageTextfield.text {
            if !keychain.set(value: ourMessage, forKey: "secretMessage") {
                print("You Goofed")
            }
        }
    }
    
}

