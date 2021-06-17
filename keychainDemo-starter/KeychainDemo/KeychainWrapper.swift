//
//  KeychainWrapper.swift
//  KeychainDemo
//
//  Created by Student Laptop_7/19_1 on 6/16/21.
//

import Foundation
import KeychainSwift

class KeychainWrapper {
    let keychain = KeychainSwift()
    
    func set(value: String, forKey ourKey: String) -> Bool {
        keychain.set(value, forKey: ourKey)
    }
    
    func delete(key: String) {
        keychain.delete(key)
    }
    
    func get(key: String) -> String? {
        keychain.get(key)
    }

    
}
