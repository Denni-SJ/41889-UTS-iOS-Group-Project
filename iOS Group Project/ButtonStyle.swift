//
//  ButtonStyle.swift
//  iOS Group Project
//
//  Created by Jin O on 2023/06/11.
//

import Foundation
import UIKit

class ButtonStyle {
    static func customButton(_ button: UIButton) {
        if button.backgroundColor != UIColor(named: "Green") {
            button.backgroundColor = UIColor(named: "Green")
            button.setTitleColor(UIColor.white, for: .normal)
        }
        else {
            button.backgroundColor = .white
            button.setTitleColor(UIColor(named: "Green"), for: .normal)
        }
    }
    static func applyStyle(to button: UIButton) {
        button.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
    }
    @objc private static func buttonPressed(_ sender: UIButton) {
        customButton(sender)
    }
}
