//
//  AuthServise.swift
//  Pattern
//
//  Created by Артур Дохно on 08.01.2022.
//

import Foundation

public struct User {
    public let email: String
    public let password: String
}

public struct Token {
    public let token: String
}

public protocol AuthServise {
    func login(email: String,
               password: String,
               success: @escaping (User, Token) -> Void,
               failure: @escaping (Error?) -> Void)
}
