//
//  MessageViewController.swift
//  KeychainDemo
//
//  Created by Adriana González Martínez on 6/16/21.
//

import UIKit

class MessageViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    
    let keychainWrapper = KeychainWrapper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let ourMessage = keychainWrapper.get(key: "secretMessage") {
            messageLabel.text = ourMessage
        }
        
    }
    
    @IBAction func deleteBtnPressed(_ sender: Any) {
        keychainWrapper.delete(key: "secretMessage")
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    
}
