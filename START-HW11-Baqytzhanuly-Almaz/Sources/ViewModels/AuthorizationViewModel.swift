//
//  AuthorizationViewModel.swift
//  START-HW11-Baqytzhanuly-Almaz
//
//  Created by allz on 7/24/23.
//

import Foundation

class AuthorizationViewModel {
    var statusText = Dynamic("")
    
    func userButtonPressed(login: String, password: String) {
        if login == User.users[0].login && password == User.users[0].password {
            statusText.value = "Log in succesfully ✅"
        } else {
            statusText.value = "Log in failed ❌"
        }
    }
}
