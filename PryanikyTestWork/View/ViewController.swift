//
//  ViewController.swift
//  PryanikyTestWork
//
//  Created by Alexander  Sapianov on 04.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet var viewModel: ViewModel!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
        fetching()
    }

    // MARK: - Functions
    func setUpTableView() {
        tableView.register(HzCell.self, forCellReuseIdentifier: HzCell.identifier)
        tableView.register(SelectorCell.self, forCellReuseIdentifier: SelectorCell.identifier)
        tableView.register(PictureCell.self, forCellReuseIdentifier: PictureCell.identifier)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func fetching() {
        viewModel?.fetchData {
            self.tableView.reloadData()
        }
    }
}

