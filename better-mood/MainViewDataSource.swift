//
//  MainViewDataSource.swift
//  better-mood
//
//  Created by Rodrigo Nájera Rivas on 3/19/17.
//  Copyright © 2017 Advanced Application Ideas. All rights reserved.
//

import Foundation
import UIKit

class DataSource: NSObject, UITableViewDataSource {
    
    var emotions = [String]()
    
    //MARK: - UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emotions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        
        cell.textLabel?.text = emotions[indexPath.row]
        
        return cell
    }
    
}
