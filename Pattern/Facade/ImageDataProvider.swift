//
//  ImageDataProvider.swift
//  Pattern
//
//  Created by Артур Дохно on 13.01.2022.
//

import UIKit

class ImageDataProvider {
    
    public func data(from image: UIImage, type: ImageType) throws -> Data {
        switch type {
        case .png:
            return try pngData(from: image)
        case .jpeg(let compressionQuality):
            return try jpeg(from: image, compressionQuality: compressionQuality)
        }
    }
    
    private func pngData(from image: UIImage) throws -> Data {
        guard let imageData = image.pngData() else {
            throw ImageSavedError.couldNotCreatePNGDataFromImage
        }
        return imageData
    }
    
    private func jpeg(from image: UIImage, compressionQuality: CGFloat) throws -> Data {
        guard let imageData = image.jpegData(compressionQuality: compressionQuality) else {
            throw ImageSavedError.couldNotCreateJPEGDataFromImage
        }
        return imageData
    }
    
}
