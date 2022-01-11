//
//  CatalogPresenter.swift
//  Pattern
//
//  Created by Артур Дохно on 11.01.2022.
//

import Foundation

protocol Presenter {
    var messageInfo: String { get }
}

class CatalogPresenter: Presenter {
    
    weak var viewController: CatalogVC?
    
    var messageInfo: String = "Создает ViewModel для представления"
    
}
