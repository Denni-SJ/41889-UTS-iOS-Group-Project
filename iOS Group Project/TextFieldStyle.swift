//
//  TextFieldStyle.swift
//  iOS Group Project
//
//  Created by Jin O on 2023/06/11.
//

import Foundation
import UIKit

extension UITextField {
    func customBorder() {
        self.borderStyle = .none
        let customColor = UIColor(named: "green") ?? UIColor()
        self.layer.borderColor = customColor.cgColor
        self.layer.borderWidth = 2.0
        self.layer.cornerRadius = 8.0
    }
}
