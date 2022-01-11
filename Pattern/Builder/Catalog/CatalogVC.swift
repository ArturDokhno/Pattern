//
//  CatalogVC.swift
//  Pattern
//
//  Created by Артур Дохно on 11.01.2022.
//

import UIKit

class CatalogVC: UIViewController {
    
    var interactor: Interactor!
    
    init(title: String, interactor: Interactor) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
        self.title = title
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
    }

}
