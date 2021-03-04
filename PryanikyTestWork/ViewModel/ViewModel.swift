//
//  ViewModel.swift
//  PryanikyTestWork
//
//  Created by Alexander  Sapianov on 04.03.2021.
//
import Foundation
import UIKit

class ViewModel: NSObject {
    
    @IBOutlet weak var dataCliet: FetchCLient!
    private var data: JsonModel?
    private var cellCreate = CellCreate()
    
    // MARK: - Functions
    func fetchData(completion: @escaping() -> ()){
        dataCliet.fetchData { data in
            self.data = data
            completion()
        }
    }
    
    func numberOfItemsInSec(section: Int) -> Int {
        return data?.view.count ?? 4
    }
    
    func cellForRow(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard data != nil else {return UITableViewCell()}
        return cellCreate.createCell(for: tableView, in: (data?.view[indexPath.row])!, with: data!.data)
    }

    // TO do: поставить алерт контроллер менеджер 
    func alertForTableView(at indexPath: IndexPath) -> UIAlertController {
        guard let name = data?.view[indexPath.row] else {return UIAlertController()}
        return AlertManager.shared.createAlert(title: "Инициализировал объект: \(name)", subtitle: "Нажмите OK чтобы закрыть" , actionTitle: "OK")
    }
}
