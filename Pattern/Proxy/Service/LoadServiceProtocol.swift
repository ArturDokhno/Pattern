//
//  LoadServiceProtocol.swift
//  Pattern
//
//  Created by Артур Дохно on 08.01.2022.
//

import Foundation

protocol LoadServiceProtocol {
    func loadImage(url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ())
}
