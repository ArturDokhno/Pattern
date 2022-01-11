//
//  CatalogBuilder.swift
//  Pattern
//
//  Created by Артур Дохно on 11.01.2022.
//

import UIKit

class CatalogBuilder: ModuleBuilder {
    
    var title: String?
    
    func setTitle(_ title: String) -> CatalogBuilder {
        self.title = title
        return self
    }
    
    func build() -> UIViewController {
        guard let title = title else { fatalError("Вы должны добавить title") }
        
        let presenter = CatalogPresenter()
        let interactor = CatalogInteractor(presenter: presenter)
        let controller = CatalogVC(title: title, interactor: interactor)
        presenter.viewController = controller
        
        return controller
    }

}
