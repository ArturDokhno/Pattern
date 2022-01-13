//
//  FacadeVC.swift
//  Pattern
//
//  Created by Артур Дохно on 13.01.2022.
//

import UIKit

enum ImageSavedError: Error {
    case couldNotCreateDestinationPath
    case couldNotCreateJPEGDataFromImage
    case couldNotCreatePNGDataFromImage
    case couldNotSaveImageDesstinationPath
}

enum ImageType {
    case png
    case jpeg(compressionQuality: CGFloat)
}

class FacadeVC: UIViewController {
    
    let imageSave = ImageSavedFacade()
    let image = UIImage(named: "Mercedes")!

    override func viewDidLoad() {
        super.viewDidLoad()

        do {
            try imageSave.save(image: image,
                               type: .png,
                               fileName: "my_file_name",
                               overwrite: true)
        } catch {
            print(error)
        }
        
    }
    
}
