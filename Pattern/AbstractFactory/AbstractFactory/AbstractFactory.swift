//
//  AbstractFactory.swift
//  Pattern
//
//  Created by Артур Дохно on 06.01.2022.
//

import Foundation

protocol AbstractFactory {
    func createChair() -> Chair
    func createTable() -> Table
    func createSofa() -> Sofa
}
