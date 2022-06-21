//
//  File.swift
//  PetProject
//
//  Created by катя on 18.06.2022.
//

import Foundation

struct User {
    let login: String
    let password: String
    
    let keys: [Keys]
    
    static func addUsers() -> [User] {
        [
            User(login: "Sergey", password: "1234", keys: Keys.addKeys()),
            User(login: "Kate", password: "1234", keys: Keys.addKeys())
        ]
    }
}

struct Keys {
    let app: String
    let login: String
    let password: String
    
    static func addKeys() -> [Keys] {
        [
            Keys(app: "VK", login: "koleso", password: "1111"),
            Keys(app: "OK", login: "koleso", password: "1111")
        ]
    }
}
