//
//  FactoreMethod.swift
//  Pattern
//
//  Created by Артур Дохно on 05.01.2022.
//

import UIKit

class FactoreMethod: UIViewController {
    
    var exerciseArray = [Exercise]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createExercise(exName: .jumping)
        runExercise()
    }
    
    func createExercise(exName: Exercises) {
        let newExercise = FactoreExercises.defaultFactore.createExercise(name: exName)
        exerciseArray.append(newExercise)
    }
    
    func runExercise() {
        for ex in exerciseArray {
            ex.start()
            ex.stop()
        }
    }

}

