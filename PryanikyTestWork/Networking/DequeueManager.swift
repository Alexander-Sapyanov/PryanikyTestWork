//
//  DequeueManager.swift
//  PryanikyTestWork
//
//  Created by Alexander  Sapianov on 04.03.2021.
//

import UIKit

protocol DequeueManagerProtocol {
    func dequeueCell(from state: DataState, for tableView: UITableView) -> CellProtocol
}

struct DequeueManager: DequeueManagerProtocol {
    func dequeueCell(from state: DataState, for tableView: UITableView) -> CellProtocol {
        var cell: CellProtocol!
        
        switch state {
        case .hz:
            cell = tableView.dequeueReusableCell(withIdentifier: HzCell.identifier) as? CellProtocol
        case .selector:
            cell = tableView.dequeueReusableCell(withIdentifier: SelectorCell.identifier) as? CellProtocol
        case .picture:
            cell = tableView.dequeueReusableCell(withIdentifier: PictureCell.identifier) as? CellProtocol
        }
        return cell
    }
}
