//
//  DetailVC.swift
//  Pattern
//
//  Created by Артур Дохно on 08.01.2022.
//

import UIKit

class DetailVC: UIViewController {
    
    let url = URL(string: "https://cartechnic.ru/800/porsche/911_carrera/porsche_911_carrera_2012_23.jpg")!

    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadImage()
    }
    
    func loadImage() {
        let imageService = LoadImageService()
        let proxy = Proxy(service: imageService)
        
        proxy.loadImage(url: url) { [weak self] (data, response, error) in
            
            guard let self = self, let data = data, error == nil else { return }
                    
            DispatchQueue.main.async {
                self.imageView.image = UIImage(data: data)
            }
        }
    }
    
    @IBAction func updatePhotoButton(_ sender: Any) {
        cacheData = nil
        imageView.image = nil
        loadImage()
    }
    
}
