//
//  UIViewExtensions.swift
//  better-mood
//
//  Created by Rodrigo Nájera Rivas on 3/19/17.
//  Copyright © 2017 Advanced Application Ideas. All rights reserved.
//

import Foundation
import UIKit

extension UIView{
    
    //MARK:- ADD BACKGROUND
    func addBackground(nombreImagen: String) {
        
        // set screen width & height
        let width = UIScreen.main.bounds.size.width
        let height = UIScreen.main.bounds.size.height
        let rect = CGRect(origin: CGPoint(x: 0,y :0), size: CGSize(width: width, height: height))
        let imageViewBackground = UIImageView(frame: rect)
        imageViewBackground.image = UIImage(named: nombreImagen)
        imageViewBackground.contentMode = UIViewContentMode.scaleAspectFill
        
        self.addSubview(imageViewBackground)
        self.sendSubview(toBack: imageViewBackground)
    }
    
}
