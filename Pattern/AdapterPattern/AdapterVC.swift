//
//  AdapterVC.swift
//  Pattern
//
//  Created by Артур Дохно on 08.01.2022.
//

import UIKit

class AdapterVC: UIViewController {
    
    var authService: AuthServise = GoogleAuthAdapter()

    override func viewDidLoad() {
        super.viewDidLoad()

        createUser(email: "artur.dohno@icloud.com", password: "Artur")
    }
    
    func createUser(email: String, password: String) {
        authService.login(email: email,
                          password: password) { (user, token) in
            print("Auth succeded: \(user.email), \(token.token)")
        } failure: { (error) in
            if let error = error {
                print(error.localizedDescription)
            }
        }

    }

}
