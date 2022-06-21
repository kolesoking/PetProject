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
}

struct Keys {
    let app: String
    let login: String
    let password: String
}
