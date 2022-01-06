//
//  KitchenFactory.swift
//  Pattern
//
//  Created by Артур Дохно on 06.01.2022.
//

import Foundation

class KitchenFactory: AbstractFactory {
    
    func createChair() -> Chair {
        print("Стул для кухни создан")
        return ChairKitchen()
    }
    
    func createTable() -> Table {
        print("Стол для кухни создан")
        return TableKitchen()
    }
    
    func createSofa() -> Sofa {
        print("Диван для кухни создан")
        return SofaKitchen()
    }
    
}
