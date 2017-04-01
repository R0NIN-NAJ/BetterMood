//
//  OnwerBasicInfoViewController.swift
//  better-mood
//
//  Created by Rocko Nájera on 3/31/17.
//  Copyright © 2017 Advanced Application Ideas. All rights reserved.
//

import UIKit

class OnwerBasicInfoViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addBackground(nombreImagen: "WelcomeScreenBG")
    }
    
 
    override func viewDidLayoutSubviews() {
        userNameTextField.backgroundColor = .black
        userNameTextField.alpha = 0.5
        userNameTextField.attributedPlaceholder = NSAttributedString(string: "Nombre",
        attributes: [NSForegroundColorAttributeName: UIColor.white])
    }
    
}
