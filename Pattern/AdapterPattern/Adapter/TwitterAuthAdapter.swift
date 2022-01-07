//
//  TwitterAuthAdapter.swift
//  Pattern
//
//  Created by Артур Дохно on 08.01.2022.
//

import Foundation

class TwitterAuthAdapter: AuthServise {
    
    private var auth = TwitterAuthenticator()
    
    public func login(email: String,
                      password: String,
                      success: @escaping (User, Token) -> Void,
                      failure: @escaping (Error?) -> Void) {
        
        auth.login(email: email,
                   password: password) { (currentUser, error) in
            guard let currentUser = currentUser else {
                failure(error)
                return
            }
            let user = User(email: currentUser.email,
                            password: currentUser.password)
            
            let token = Token(token: currentUser.token)
            
            success(user, token)
            
        }
    }
    
}
