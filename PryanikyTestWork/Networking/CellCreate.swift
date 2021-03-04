//
//  CellFactory.swift
//  PryanikyTestWork
//
//  Created by Alexander  Sapianov on 04.03.2021.
//

import UIKit

protocol CellCreateProtocol {
    mutating func createCell(for tableView: UITableView, in order: String, with data: [DataModel]) -> UITableViewCell
}

protocol CellProtocol {
    func setupCell(model: DataModel)
}

struct CellCreate: CellCreateProtocol {
    private var dequeueManager = DequeueManager()
    private var selector = Selector()
    
    mutating func createCell(for tableView: UITableView, in order: String, with data: [DataModel]) -> UITableViewCell {
        let dataState = DataState(rawValue: order)!
        let cell = dequeueManager.dequeueCell(from: dataState, for: tableView)

        cell.setupCell(model: selector.selectData(for: dataState, with: data))
    
        return cell as! UITableViewCell
    }
}
