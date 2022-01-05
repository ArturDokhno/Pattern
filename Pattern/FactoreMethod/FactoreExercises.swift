//
//  FactoreExercises.swift
//  Pattern
//
//  Created by Артур Дохно on 05.01.2022.
//

import Foundation

enum Exercises {
    case jumping, squarts
}

class FactoreExercises {
    
    static let defaultFactore = FactoreExercises()
    
    func createExercise(name: Exercises) -> Exercise {
        switch name {
        case .jumping:
            return Jumping()
        case .squarts:
            return Squarts()
        }
    }
}
