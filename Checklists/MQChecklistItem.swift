//
//  MQChecklistItem.swift
//  Checklists
//
//  Created by MichaelQiu on 16/1/27.
//  Copyright © 2016年 MichaelQiu. All rights reserved.
//

import Foundation

class MQChecklistItem {
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
}
