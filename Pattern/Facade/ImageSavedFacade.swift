//
//  ImageSavedFacade.swift
//  Pattern
//
//  Created by Артур Дохно on 13.01.2022.
//

import UIKit

class ImageSavedFacade {
    
    private let pathProvider = PathProvider()
    private let dataProvider = ImageDataProvider()
    
    public func save(image: UIImage,
                     type: ImageType,
                     fileName: String,
                     overwrite: Bool) throws {
        let destinationURL = try pathProvider.createDistinationPath(fileName: fileName)
        let imageData = try dataProvider.data(from: image, type: type)
        let writeOptions: Data.WritingOptions = overwrite ? (.atomic) : (.withoutOverwriting)
        try imageData.write(to: destinationURL, options: writeOptions)
    }
}
