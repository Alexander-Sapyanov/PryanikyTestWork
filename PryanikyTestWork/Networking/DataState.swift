//
//  DataStates.swift
//  PryanikyTestWork
//
//  Created by Alexander  Sapianov on 04.03.2021.
//

import Foundation

enum DataState: String {
    case hz = "hz"
    case selector = "selector"
    case picture = "picture"
    
    init(value: String) {
        switch value {
        case "hz":
            self = .hz
        case "picture":
            self = .picture
            
        case "selector":
            self = .selector
            
        default:
            self = .hz
        }
    }
}
