//
//  AddItemViewController.swift
//  CheckLists
//
//  Created by Wei Jin on 2015-05-09.
//  Copyright (c) 2015 Wei Jin. All rights reserved.
//

import UIKit

class AddItemViewController: UITableViewController, UITextFieldDelegate{
    
    @IBOutlet weak var doneBarButton: UIBarButtonItem!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func cancel() {
        dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func done() {
        println("Contents of the text field: \(textField.text)")
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func textField(textField: UITextField,
            shouldChangeCharactersInRange range: NSRange,
            replacementString string: String) -> Bool {
            let oldText: NSString = textField.text
            let newText: NSString = oldText.stringByReplacingCharactersInRange(
            range, withString: string)
            doneBarButton.enabled = (newText.length > 0)
            return true
    }
    
    
    override func tableView(tableView: UITableView,
        willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
        return nil
    }
    
    override func viewWillAppear(animated: Bool) {
            super.viewWillAppear(animated)
            textField.becomeFirstResponder()
    }

    
}
    
