//
//  CustomPickerViewDelegate.swift
//  PryanikyTestWork
//
//  Created by Alexander  Sapianov on 04.03.2021.
//

import UIKit

class PickerViewDelegate: NSObject, UIPickerViewDelegate, UIPickerViewDataSource {
    private var data: [Variants]!
    private var id : [Int] = []
    private var text : [String] = []
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return text.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(text[row]), id: \(id[row])"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        print("Выбранный вами эелемент имеет Id: \(id[row]), и его имя : \(text[row])")
    }
    
    private func compareData(data: [Variants]) {
        for item in data {
            id.append(item.id)
            text.append(item.text)
        }
    }
    
    init(data: [Variants]) {
        super.init()
        self.data = data
        compareData(data: data)
    }
}
