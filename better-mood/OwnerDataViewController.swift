//
//  OwnerDataViewController.swift
//  better-mood
//
//  Created by Rocko Nájera on 3/31/17.
//  Copyright © 2017 Advanced Application Ideas. All rights reserved.
//

import UIKit

class OwnerDataViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var aboutLabel: UILabel!
    @IBOutlet weak var nextButton: roundButton!
    
    override func viewWillAppear(_ animated: Bool) {
        UIApplication.shared.statusBarStyle = .lightContent        
        self.welcomeLabel.text = "Bienvenido"
        self.aboutLabel.text = "Cuentanos un poco mas de ti"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addBackground(nombreImagen: "WelcomeScreenBG")
       
    }
    
    override func viewDidAppear(_ animated: Bool){
    
        self.welcomeLabel.fadeIn(1.0, delay: 0.5){ (result) in }
        self.aboutLabel.fadeIn(1.5, delay: 1.0){ (result) in }
        self.nextButton.fadeIn(2.0, delay: 1.5){ (result) in }
    }

    @IBAction func nextView(_ sender: UIButton) {
        
        print("tapped")
    }
}
