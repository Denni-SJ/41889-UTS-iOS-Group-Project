//
//  ButtonStyle.swift
//  iOS Group Project
//
//  Created by Jin O on 2023/06/11.
//

import Foundation
import UIKit

class ButtonStyle {
    static func customButton(to button: UIButton, target: Any?, action: Selector) {
//        if button.backgroundColor != UIColor(named: "Green") {
//            button.backgroundColor = UIColor(named: "Green")
//        }
//        else {
//            button.backgroundColor = UIColor.white
//        }
        button.backgroundColor = UIColor.white
        button.setTitleColor(UIColor(named: "Green"), for: .normal)
                
                // Add target to handle button tap event
        button.addTarget(target, action: action, for: .touchUpInside)
    }
    
    @objc private static func toggleButtonStyle(_ sender: UIButton) {
            if sender.backgroundColor != UIColor(named: "Green") {
                sender.backgroundColor = UIColor(named: "Green")
                sender.setTitleColor(UIColor.white, for: .normal)
            } else {
                sender.backgroundColor = UIColor.white
                sender.setTitleColor(UIColor(named: "Green"), for: .normal)
            }
        }

}

