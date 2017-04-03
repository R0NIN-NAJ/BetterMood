//
//  OnwerBasicInfoViewController.swift
//  better-mood
//
//  Created by Rocko Nájera on 3/31/17.
//  Copyright © 2017 Advanced Application Ideas. All rights reserved.
//

import UIKit

class OwnerBasicInfoViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!

    @IBOutlet weak var fechaNacimiento: UITextField!
    
    let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addBackground(nombreImagen: "WelcomeScreenBG")
        
        self.createDatePicker()
    }
    
    override func viewDidLayoutSubviews() {
   
        userNameTextField.formatTextField(backgroundColor: .black, alpha: 0.5, placeHolder: "Nombre", placeHolderColor: .white)
        
        fechaNacimiento.formatTextField(backgroundColor: .black, alpha: 0.5, placeHolder: "Fecha de Nacimiento", placeHolderColor: .white)
    }
}
