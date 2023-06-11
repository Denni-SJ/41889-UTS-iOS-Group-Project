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
        }
        else {
            button.backgroundColor = UIColor.white
        }
    }
}

