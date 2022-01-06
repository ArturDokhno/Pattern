//
//  BedroomFactory.swift
//  Pattern
//
//  Created by Артур Дохно on 06.01.2022.
//

import Foundation

class BedroomFactory: AbstractFactory {
    
    func createChair() -> Chair {
        print("Стул для спальни создан")
        return ChairBedroom()
    }
    
    func createTable() -> Table {
        print("Кофейный столик для спальни создан")
        return CoffeeTableBedroom()
    }
    
    func createSofa() -> Sofa {
        print("Кровать для спальни создан")
        return SofaBedroom()
    }
    
}
