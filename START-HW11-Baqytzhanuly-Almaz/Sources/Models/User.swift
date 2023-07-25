//
//  User.swift
//  START-HW11-Baqytzhanuly-Almaz
//
//  Created by allz on 7/24/23.
//

import Foundation

struct User {
    let login: String
    let password: String
}

extension User {
    static var users = [
        User(login: "Mvvm@gmail.com", password: "123")
    ]
}
