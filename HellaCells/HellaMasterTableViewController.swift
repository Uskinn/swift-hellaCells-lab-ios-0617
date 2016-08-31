//
//  HellaMasterTableViewController.swift
//  HellaCells
//
//  Created by Sergey Nevzorov on 8/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaMasterTableViewController: UITableViewController {
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Table", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = String(indexPath.row + 1)
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "sendData" {
            
            if let destinationVC = segue.destinationViewController as? HellaDetailViewController {
                
                let path = tableView.indexPathForSelectedRow
                let cell = tableView.cellForRowAtIndexPath(path!)
                destinationVC.bigNumber = (cell?.textLabel?.text)!
                
            }
        }
    }
}
