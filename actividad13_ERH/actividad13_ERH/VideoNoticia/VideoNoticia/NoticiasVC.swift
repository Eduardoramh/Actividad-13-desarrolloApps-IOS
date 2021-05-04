//
//  NoticiasVC.swift
//  VideoNoticia
//
//  Created by alicharlie on 12/05/16.
//  Copyright © 2016 codepix. All rights reserved.
//

import UIKit


class NoticiasVC: UITableViewController {

    var noticias:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let inset = UIEdgeInsetsMake(60, 0, 0, 0);
        self.tableView.contentInset = inset
        self.tableView.scrollIndicatorInsets = inset
    
        LeerNoticias().getNoticias { (datos) in
            self.noticias = datos
            self.tableView.reloadData()
            
        }
        
        
    }
    
    
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.noticias.count
        
    }
    
     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
        
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        
        celda.textLabel!.text = self.noticias[indexPath.row]
        
        return celda
        
    }
    
    
}
