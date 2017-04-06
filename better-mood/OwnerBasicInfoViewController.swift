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
    
    @IBOutlet weak var correoUsuario: UITextField!
    
    @IBOutlet weak var userDataScreen: UIView!
    
    @IBOutlet weak var ContinueButton: UIButton!
    
    let datePicker = UIDatePicker()
    
    let usrDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addBackground(nombreImagen: "WelcomeScreenBG")
        
        self.createDatePicker()
        
        userDataScreen.layer.cornerRadius = 50
        
        ContinueButton.layer.cornerRadius = 25
    }
    
    override func viewDidLayoutSubviews() {
   
        userNameTextField.formatTextField(backgroundColor: .black, alpha: 0.5, placeHolder: "¿Cual es tu nombre?", placeHolderColor: .white)
        
        fechaNacimiento.formatTextField(backgroundColor: .black, alpha: 0.5, placeHolder: "¿Cuando naciste?", placeHolderColor: .white)
        
        correoUsuario.formatTextField(backgroundColor: .black, alpha: 0.5, placeHolder: "¿Dirección de correo?", placeHolderColor: .white)
    }
    
    @IBAction func ContinueButtonAction(_ sender: UIButton) {
            
        usrDefaults.set(userNameTextField.text!, forKey: UserInfo.defaultsUserName)
        usrDefaults.set(fechaNacimiento.text!, forKey: UserInfo.defaultBirthDate)
        usrDefaults.set(correoUsuario.text!, forKey: UserInfo.defaultMail)
        
        
        validateTextFields()
        
    }
    
    func validateTextFields(){
        
        let name = userNameTextField.text!
        let birthdate = fechaNacimiento.text!
        let mail = correoUsuario.text!
        
        if name.isEmpty && birthdate.isEmpty && mail.isEmpty{
            let alert = UIAlertController(title: "Alert", message: "Los campos estan vacios", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }else{
            
            let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        
    }
    
    
    
}
