//
//  AlloyWheels.swift
//  Pattern
//
//  Created by Артур Дохно on 08.01.2022.
//

import Foundation

class AlloyWheels: MercedesDecorator {
    
    required init(decorator: CarProtocol) {
        super.init(decorator: decorator)
    }
    
    override func getPrice() -> Double {
        return super.getPrice() + 1500
    }
    
    override func getTitle() -> String {
        return super.getTitle() + "Premium alloy wheels "
    }
    
}
