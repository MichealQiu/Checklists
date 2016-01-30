//
//  MQAddItemViewController.swift
//  Checklists
//
//  Created by MichaelQiu on 16/1/29.
//  Copyright © 2016年 MichaelQiu. All rights reserved.
//

import UIKit

class MQAddItemViewController: UITableViewController {
    
    @IBAction func cancel() {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func done() {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
        return nil
    }
}