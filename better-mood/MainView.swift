//
//  ViewController.swift
//  better-mood
//
//  Created by Rodrigo Nájera Rivas on 3/18/17.
//  Copyright © 2017 Advanced Application Ideas. All rights reserved.
//

import UIKit
import FSCalendar

class MainView: UIViewController, FSCalendarDataSource, FSCalendarDelegate{

    @IBOutlet var moodTable: UITableView!

    @IBOutlet var moodCalendar: FSCalendar!
    
    @IBOutlet var addEmotionOutlet: PushButtonView!
    
    private let dataSource = DataSource()
    
    private let customAlertView = CustomAlertView() as UIView

    
    let cellReuseIdentifier = "cell"
    
    override func viewWillAppear(_ animated: Bool) {
        UIApplication.shared.statusBarStyle = .lightContent
    }
    
    override func viewDidLoad() {
        
        self.view.addBackground(nombreImagen: "CalendarBackground")
        
        dataSource.emotions = []
        
        moodTable.dataSource = dataSource
        
        moodCalendar.bottomBorder.alpha = 0
        
        addEmotionOutlet.superview?.bringSubview(toFront: addEmotionOutlet)

        
    }
    
    @IBAction func addEmotionAction(_ sender: UIButton) {
        
        customAlertView
        
    }
    
}


