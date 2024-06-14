//
//  Checklist.swift
//  Checklists
//
//  Created by Douglas Jasper on 2024-06-11.
//

import UIKit

class Checklist: NSObject, Codable {
    var name = ""
    var items = [ChecklistItem]()     // add this line
    
    init(name: String) {
      self.name = name
      super.init()
    }

}
