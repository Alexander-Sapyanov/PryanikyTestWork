//
//  AlertManager.swift
//  PryanikyTestWork
//
//  Created by Alexander  Sapianov on 04.03.2021.
//

import UIKit

class AlertManager {
    
  static let shared = AlertManager()
  
  func createAlert(title: String, subtitle: String, actionTitle: String, action: (()->Void)? = nil) -> UIAlertController {
    let alert = UIAlertController(title: title, message: subtitle, preferredStyle: .alert)
    let action = UIAlertAction(title: actionTitle, style: .default) { (_) in
      if let action = action {
        action()
      }
    }
    alert.addAction(action)
    return alert
  }
}
