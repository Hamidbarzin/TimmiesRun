//
//  ViewController.swift
//  TimmiesRun
//
//  Created by Hamidreza Zebardast on 2024-06-09.
//

import UIKit

class TimmiesViewController: UITableViewController {
    var items = [ChecklistItem]()
    
    override func viewDidLoad() {
      super.viewDidLoad()

      // Replace previous code with the following
      let item1 = ChecklistItem()
      item1.text = "Medium Double Double"
      items.append(item1)

      let item2 = ChecklistItem()
      item2.text = "Large English Breakfast Tea"
      items.append(item2)

      let item3 = ChecklistItem()
      item3.text = "Small Iced Capp"
      items.append(item3)

      let item4 = ChecklistItem()
      item4.text = "Box of 20 TimBits"
      items.append(item4)

      let item5 = ChecklistItem()
      item5.text = "Boston Cream Donut"
      items.append(item5)
    }

    var row0item = ChecklistItem()
    var row1item = ChecklistItem()
    var row2item = ChecklistItem()
    var row3item = ChecklistItem()
    var row4item = ChecklistItem()
    
    // MARK: - Table View Data Source
    override func tableView(
      _ tableView: UITableView,
      numberOfRowsInSection section: Int
    ) -> Int {
        return items.count
    }

    override func tableView(
      _ tableView: UITableView,
      cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(
        withIdentifier: "ChecklistItem",
        for: indexPath)

      let item = items[indexPath.row]

      configureText(for: cell, with: item)
      configureCheckmark(for: cell, with: item)
      return cell
    }


    // MARK: - Table View Delegate
    override func tableView(
      _ tableView: UITableView,
      didSelectRowAt indexPath: IndexPath
    ) {
      if let cell = tableView.cellForRow(at: indexPath) {
        let item = items[indexPath.row]
        item.checked.toggle()
        configureCheckmark(for: cell, with: item)
      }
      tableView.deselectRow(at: indexPath, animated: true)
    }



    // configure checkmarks
    
    func configureCheckmark(
      for cell: UITableViewCell,
      with item: ChecklistItem
    ) {
      if item.checked {
        cell.accessoryType = .checkmark
      } else {
        cell.accessoryType = .none
      }
    }
    
    func configureText(
      for cell: UITableViewCell,
      with item: ChecklistItem
    ) {
      let label = cell.viewWithTag(1000) as! UILabel
      label.text = item.text
    }



    // default checkmark states
    var row0checked = false
    var row1checked = false
    var row2checked = false
    var row3checked = false
    var row4checked = false

}

