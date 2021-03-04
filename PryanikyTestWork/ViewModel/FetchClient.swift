//
//  FetchClient.swift
//  PryanikyTestWork
//
//  Created by Alexander  Sapianov on 04.03.2021.
//

import UIKit
import Moya

class FetchCLient: NSObject {
    func fetchData(completion: @escaping(JsonModel)-> ()) {
        let provider = MoyaProvider<DataService>()
        provider.request(.getData) { result in
    
            switch result {
            case .success(let response):
                do {
                    let data = try JSONDecoder().decode(JsonModel.self, from: response.data)
                    completion(data)
                }
                catch(let error) {
                    print(error)
                }
            case .failure(let error):
                print(error)
            }
        }
    }
}
