//
//  GoogleAuthenticator.swift
//  Pattern
//
//  Created by Артур Дохно on 08.01.2022.
//

import Foundation

public struct GoogleUser {
    public var email: String
    public var password: String
    public var token: String
}

class GoogleAuthenticator {
    
    public func login(email: String,
                      password: String,
                      completion: @escaping (GoogleUser?, Error?) -> Void) {
        let token = "someToken"
        let user = GoogleUser(email: email,
                              password: password,
                              token: token)
        completion(user, nil)
    }
}
