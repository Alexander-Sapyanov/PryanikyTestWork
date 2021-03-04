//
//  NetworkService.swift
//  PryanikyTestWork
//
//  Created by Alexander  Sapianov on 04.03.2021.
//

import Foundation
import Moya

 enum DataService {
    case getData
}

extension DataService: TargetType {
    var baseURL: URL { return URL(string: "https://pryaniky.com")!}
    var path: String {
        switch self {
        case .getData:
            return "/static/json/sample.json"
    }
    }
    var parameterEncoding: ParameterEncoding {
        return URLEncoding.default
    }
    var method: Moya.Method {
        return .get
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        .requestPlain
    }
    
    var headers: [String : String]? {
        return ["Content-type": "application/json"]
    }
    
  
}
