//
//  Selector.swift
//  PryanikyTestWork
//
//  Created by Alexander  Sapianov on 04.03.2021.
//

import UIKit

class SelectorCell: UITableViewCell, CellProtocol {
    
    // Cell identifier
    static let identifier = "SelectorCell"
    
    // Properties
    private var selectorPickerView = UIPickerView()
    private var pickerDelegate: PickerViewDelegate?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        cellLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Functions
    func setupCell(model: DataModel) {
        guard let selectedId = model.data.selectedId else {return}
        guard let modelData = model.data.variants else {return}
        
        pickerDelegate = PickerViewDelegate(data: modelData)
        selectorPickerView.dataSource = pickerDelegate
        selectorPickerView.delegate = pickerDelegate
        selectorPickerView.selectRow(selectedId - 1, inComponent: 0, animated: true)
    }
    
    private func cellLayout() {
        selectorPickerView.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(selectorPickerView)
        NSLayoutConstraint.activate([
            selectorPickerView.leftAnchor.constraint(equalTo: leftAnchor, constant: 10),
            selectorPickerView.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 2/4),
            selectorPickerView.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 5/6)
        ])
    }
}
