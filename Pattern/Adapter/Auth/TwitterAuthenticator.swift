//
//  TwitterAuthenticator.swift
//  Pattern
//
//  Created by Артур Дохно on 08.01.2022.
//

import Foundation

public struct TwitterUser {
    public var email: String
    public var password: String
    public var token: String
}

class TwitterAuthenticator {
    
    public func login(email: String,
                      password: String,
                      completion: @escaping (TwitterUser?, Error?) -> Void) {
        let token = "someToken"
        let user = TwitterUser(email: email,
                              password: password,
                              token: token)
        completion(user, nil)
    }
}
