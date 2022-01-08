//
//  PanframeRoof.swift
//  Pattern
//
//  Created by Артур Дохно on 08.01.2022.
//

import Foundation

class PanframeRoof: MercedesDecorator {
    
    required init(decorator: CarProtocol) {
        super.init(decorator: decorator)
    }
    
    override func getPrice() -> Double {
        return super.getPrice() + 2000
    }
    
    override func getTitle() -> String {
        return super.getTitle() + "Premium roof"
    }
    
}
