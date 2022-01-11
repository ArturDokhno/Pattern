//
//  CatalogInteractor.swift
//  Pattern
//
//  Created by Артур Дохно on 11.01.2022.
//

import Foundation

protocol Interactor {
    init(presenter: Presenter)
}

class CatalogInteractor: Interactor {
    
    var presenter: Presenter!
    
    // Бизнес логика
    
    required init(presenter: Presenter) {
        self.presenter = presenter
    }
    
}
