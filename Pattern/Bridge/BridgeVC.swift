//
//  BridgeVC.swift
//  Pattern
//
//  Created by Артур Дохно on 09.01.2022.
//

import UIKit

class BridgeVC: UIViewController {

    @IBOutlet var dayPicker: DayPickerView!
    
    var days = ["Пн", "Вт", "Ср", "Чт", "Пт", "Сб", "Вс"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dayPicker.dataSource = self
    }
    
}

extension BridgeVC: DayPickerViewDataSource {
    
    func dayPickerCount(_ dayPicker: DayPickerView) -> Int {
        return days.count
    }
    
    func dayPickerTitle(_ dayPicker: DayPickerView, indexPath: IndexPath) -> String {
        return days[indexPath.row]
    }
    
}
