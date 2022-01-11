//
//  BuilderViewController.swift
//  Pattern
//
//  Created by Артур Дохно on 11.01.2022.
//

import UIKit

class BuilderViewController: UIViewController {
    
    @IBAction func pressButton(_ sender: Any) {
        let controller = CatalogBuilder().setTitle("Catalog#1").build()
        self.present(controller, animated: true, completion: nil)
    }
    
}
