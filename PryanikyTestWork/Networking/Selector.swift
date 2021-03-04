//
//  Selector.swift
//  PryanikyTestWork
//
//  Created by Alexander  Sapianov on 04.03.2021.
//

import Foundation

protocol SelectorProtocol {
    mutating func selectData(for state: DataState, with data: [DataModel]) -> DataModel
}

struct Selector: SelectorProtocol {
    private var dataModel: DataModel!
    mutating func selectData(for state: DataState, with data: [DataModel]) -> DataModel {
        for point in data {
            if point.name == state.rawValue {
                self.dataModel = point
            }
        }
        return dataModel
    }
}
