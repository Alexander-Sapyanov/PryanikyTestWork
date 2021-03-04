//
//  Hz.swift
//  PryanikyTestWork
//
//  Created by Alexander  Sapianov on 04.03.2021.
//

import UIKit

class HzCell: UITableViewCell, CellProtocol {
    
    // Cell identifier
    static let identifier = "HzCell"
    
    // Label Property
    private let  sectionTextLabel: UILabel  = {
      let label = UILabel()
        label.textAlignment = .left
        label.textColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 28)
      return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        cellLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Functions
    func setupCell(model: DataModel) {
        sectionTextLabel.text = model.data.text
    }
    
    private func cellLayout() {
        addSubview(sectionTextLabel)

        NSLayoutConstraint.activate([
            sectionTextLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 10),
            sectionTextLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            sectionTextLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: 10),
            sectionTextLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 10)
        ])
    }
}
