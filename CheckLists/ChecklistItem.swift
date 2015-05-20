//
//  ChecklistItem.swift
//  CheckLists
//
//  Created by Wei Jin on 2015-04-28.
//  Copyright (c) 2015 Wei Jin. All rights reserved.
//

import Foundation

class ChecklistItem {
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
}