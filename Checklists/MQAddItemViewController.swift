//
//  MQAddItemViewController.swift
//  Checklists
//
//  Created by MichaelQiu on 16/1/29.
//  Copyright © 2016年 MichaelQiu. All rights reserved.
//

import UIKit

protocol MQAddItemViewControllerDelegate: class {
    func addItemViewControllerDidCancel(controller: MQAddItemViewController)
    func addItemViewController(controller: MQAddItemViewController, didFinishAddingItem item:MQChecklistItem)
}

class MQAddItemViewController: UITableViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var doneBarButton: UIBarButtonItem!
    
    weak var delegate: MQAddItemViewControllerDelegate?
    
    @IBAction func cancel() {
        delegate?.addItemViewControllerDidCancel(self)
    }
    
    @IBAction func done() {
        let item = MQChecklistItem()
        item.text = textField.text!
        item.checked = false
        
        delegate?.addItemViewController(self, didFinishAddingItem: item)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        textField.becomeFirstResponder()
    }
    
    override func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
        return nil
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        let oldText: NSString = textField.text!
        let newText: NSString = oldText.stringByReplacingCharactersInRange(range, withString: string)
        
        doneBarButton.enabled = (newText.length > 0)
        return true
    }
}