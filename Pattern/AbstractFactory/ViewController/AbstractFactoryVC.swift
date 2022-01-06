//
//  AbstractFactoryVC.swift
//  Pattern
//
//  Created by Артур Дохно on 06.01.2022.
//

import UIKit

class AbstractFactoryVC: UIViewController {
    
    var chair: Chair?
    var table: Table?
    var sofa: Sofa?

    override func viewDidLoad() {
        super.viewDidLoad()

    }
   
    @IBAction func kithenOrder(_ sender: Any) {
        chair = KitchenFactory().createChair()
        table = KitchenFactory().createTable()
        sofa =  KitchenFactory().createSofa()
    }
    
    @IBAction func bedRoomOrder(_ sender: Any) {
        chair = BedroomFactory().createChair()
        table = BedroomFactory().createTable()
        sofa = BedroomFactory().createSofa()
    }
    
}
