//
//  OwnerBasicInfoView.swift
//  better-mood
//
//  Created by Rocko Nájera on 4/2/17.
//  Copyright © 2017 Advanced Application Ideas. All rights reserved.
//

import Foundation
import UIKit

struct UserInfo{
    static let defaultsUserName = "BUSERNAME"
    static let defaultBirthDate = "BBIRTHDATE"
    static let defaultMail = "BMAIL"
}


extension OwnerBasicInfoViewController{
    
    
    func createDatePicker(){
        
        //Format date picker
        datePicker.datePickerMode = .date
        datePicker.backgroundColor = .white
        
        
        // Date picker toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        toolbar.tintColor = .gray
        toolbar.barTintColor = .white
        // Bar button item
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(doneFechaDeNacimiento))
        toolbar.setItems([doneButton], animated: false)
        fechaNacimiento.inputAccessoryView = toolbar
        
        //Datepicker -> Textfield
        fechaNacimiento.inputView = datePicker
        
        var components = DateComponents()
        components.year = -100
        let minDate = Calendar.current.date(byAdding: components, to: Date())
        
        components.year = 0
        let maxDate = Calendar.current.date(byAdding: components, to: Date())
        
        datePicker.minimumDate = minDate
        datePicker.maximumDate = maxDate
    }
    
    func doneFechaDeNacimiento(){
        
        //Format date
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .none
        dateFormatter.dateFormat = "dd/MM/yyyy"
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
        
        fechaNacimiento.text = dateFormatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    
    func keyboardWillHide(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y != 0{
                self.view.frame.origin.y += keyboardSize.height
                
            }
        }
    }
}
