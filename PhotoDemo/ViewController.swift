//
//  ViewController.swift
//  PhotoDemo
//
//  Created by 板垣智也 on 2019/04/07.
//  Copyright © 2019 板垣智也. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    @IBOutlet weak var imageView: UIImageView!
    
    // action when user finish choose photo
    // info = photo
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageView.image = image
        } else {
            print("There was a problem getting the image")
        }
        
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func chooseImage(_ sender: Any) {
        
        let imagePickerController = UIImagePickerController()
        
        imagePickerController.delegate = self
        
        imagePickerController.sourceType = UIImagePickerController.SourceType.photoLibrary
        
        imagePickerController.allowsEditing = false
        
        self.present(imagePickerController, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

