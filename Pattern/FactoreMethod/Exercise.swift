//
//  Exercise.swift
//  Pattern
//
//  Created by Артур Дохно on 05.01.2022.
//

import Foundation

protocol Exercise {
    var name: String { get }
    var type: String { get }
    
    func start()
    func stop()
}
