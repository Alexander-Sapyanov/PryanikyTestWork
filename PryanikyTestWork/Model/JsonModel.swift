//
//  JsonModel.swift
//  PryanikyTestWork
//
//  Created by Alexander  Sapianov on 04.03.2021.
//

import Foundation

struct JsonModel: Codable {
  var data:[DataModel]
  var view:[String]
}

struct DataModel: Codable {
  var name: String
  var data: DataInfo
}

struct DataInfo: Codable {
  var url: String?
  var text: String?
  var selectedId: Int?
  var variants: [Variants]?
}

struct Variants: Codable {
  var id: Int
  var text: String
}
