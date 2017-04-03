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
    
    func fadeIn(_ duration: TimeInterval = 1.0, delay: TimeInterval = 0.0, completion: @escaping ((Bool) -> Void) = {(finished: Bool) -> Void in}) {
        UIView.animate(withDuration: duration, delay: delay, options: UIViewAnimationOptions.curveEaseIn, animations: {
            self.alpha = 1.0
        }, completion: completion)  }
    
    func fadeOut(_ duration: TimeInterval = 1.0, delay: TimeInterval = 0.0, completion: @escaping (Bool) -> Void = {(finished: Bool) -> Void in}) {
        UIView.animate(withDuration: duration, delay: delay, options: UIViewAnimationOptions.curveEaseIn, animations: {
            self.alpha = 0.0
        }, completion: completion)
    }
}

extension UITextField{
    
    
    
    func formatTextField(backgroundColor: UIColor, alpha:CGFloat, placeHolder: String, placeHolderColor: UIColor ){
        
        self.backgroundColor = backgroundColor
        self.alpha = alpha
        self.attributedPlaceholder = NSAttributedString(string: placeholder!,attributes: [NSForegroundColorAttributeName: placeHolderColor])

    }
    
    
}
