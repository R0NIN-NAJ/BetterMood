//
//  CustomView.swift
//  better-mood
//
//  Created by Rodrigo Nájera Rivas on 3/19/17.
//  Copyright © 2017 Advanced Application Ideas. All rights reserved.
//

import UIKit

class CustomView: UIView {

    override func draw(_ rect: CGRect) {
        // Get Height and Width
        let layerHeight = layer.frame.height
        let layerWidth = layer.frame.width

        
        // Create Path
        let bezierPath = UIBezierPath()
        
        
        let headerRect = CGRect(x: 0, y: 0, width: layerWidth, height: 400)
        
        // Draw Points headerRect.width
        bezierPath.move(to: CGPoint(x: 0, y: layerHeight))
        bezierPath.addLine(to: CGPoint(x: headerRect.width, y: 0))
        bezierPath.addLine(to: CGPoint(x: headerRect.width, y: headerRect.height))
        bezierPath.addLine(to: CGPoint(x: 0, y: headerRect.height - 40))
        bezierPath.close()
        
        // Apply Color
        UIColor.white.setFill()
        bezierPath.fill()
        
        // Mask to Path
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = bezierPath.cgPath
        layer.mask = shapeLayer
    }
}

