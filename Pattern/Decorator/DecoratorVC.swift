//
//  DecoratorVC.swift
//  Pattern
//
//  Created by Артур Дохно on 08.01.2022.
//

import UIKit

class DecoratorVC: UIViewController {

    @IBOutlet var priceLabel: UILabel! {
        didSet {
            priceLabel.text = String(mercedes.getPrice()) + "$"
        }
    }
    
    @IBOutlet var typeLabel: UILabel! {
        didSet {
            typeLabel.text = mercedes.getTitle()
        }
    }
    
    var mercedes: CarProtocol = MercedesCLA()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func menuCarSegment(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            mercedes = MercedesCLA()
            priceLabel.text = String(mercedes.getPrice()) + "$"
            typeLabel.text = mercedes.getTitle()
        case 1:
            mercedes = MercedesCLA()
            mercedes = AlloyWheels(decorator: mercedes)
            priceLabel.text = String(mercedes.getPrice()) + "$"
            typeLabel.text = mercedes.getTitle()
        case 2:
            mercedes = MercedesCLA()
            mercedes = AlloyWheels(decorator: mercedes)
            mercedes = PanframeRoof(decorator: mercedes)
            priceLabel.text = String(mercedes.getPrice()) + "$"
            typeLabel.text = mercedes.getTitle()
        default:
            break
        }
    }
    
}
