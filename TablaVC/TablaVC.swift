//
//  TablaVC.swift
//  TablaVC
//
//  Created by Alejandro Loza on 4/4/19.
//  Copyright © 2019 Alejandro Loza. All rights reserved.
//

import UIKit

struct Celda {
    
    var id : Int
    var title : String
    var text : String
    
}

class TablaVC: UITableViewController {
    
    var headlines = [
        Celda(id: 1, title: "Alejandro Loza Guizar", text: "Ingenieria en Desarrollo de Software (IDS)."),
        Celda(id: 3, title: "Adrian Alejandro Sandoval Perez", text: "Ingenieria en Desarrollo de Software (IDS)."),
        Celda(id: 4, title: "Seth Treviño", text: "Ingenieria en Desarrollo de Software (IDS)."),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Alumnos"
        
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return headlines.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Celda", for: indexPath)
        
        let headline = headlines[indexPath.row]
        cell.textLabel?.text = headline.title
        cell.detailTextLabel?.text = headline.text
        
        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Alumnos"
    }
}
