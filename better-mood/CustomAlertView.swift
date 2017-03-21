//
//  CustomAlertView.swift
//  
//
//  Created by Rodrigo Nájera Rivas on 3/19/17.
//
//

import Foundation
import UIKit


class CustomAlertView: UIView{
    
    override init(frame: CGRect) {
        
        super.init(frame:frame)
    
        
        
        let myView = UIView()
        myView.backgroundColor = .red //UIColor(white: 1, alpha: 0.9)
        addSubview(myView)
        
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
