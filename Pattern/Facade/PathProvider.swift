//
//  PathProvider.swift
//  Pattern
//
//  Created by Артур Дохно on 13.01.2022.
//

import Foundation

class PathProvider {
    
    func createDistinationPath(fileName: String) throws -> URL {
        guard let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else {
            throw ImageSavedError.couldNotSaveImageDesstinationPath
        }
        let destinationPath = path.appendingPathComponent("\(fileName)")
        print(destinationPath)
        return destinationPath
    }
    
}
