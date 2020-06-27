//
//  Colors.swift
//  Coffe Pushkin
//
//  Created by Тимур on 24.05.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import UIKit

class Colors {

    static let shared = Colors()

    public var label: UIColor {
        if #available(iOS 13, *) {
            return .label
        }
        return UIColor(named: "262626")!
    }

    public var secondaryLabel: UIColor {
        if #available(iOS 13, *) {
            return .secondaryLabel
        }
        return UIColor(named: "727276")!
    }

    public var tertiaryLabel: UIColor {
        if #available(iOS 13, *) {
            return .tertiaryLabel
        }
        return .red
    }

    public var quaternaryLabel: UIColor {
        if #available(iOS 13, *) {
            return .quaternaryLabel
        }
        return .red
    }

    public var systemGray6: UIColor {
        if #available(iOS 13, *) {
            return .systemGray6
        }
        return UIColor(named: "B0B0B6")!
    }

    public var systemGray5: UIColor {
        if #available(iOS 13, *) {
            return .systemGray5
        }
        return UIColor(named: "C7C7CD")!
    }

    public var systemGray4: UIColor {
        if #available(iOS 13, *) {
            return .systemGray4
        }
        return UIColor(named: "D9D9DF")!
    }

    public var systemGray3: UIColor {
        if #available(iOS 13, *) {
            return .systemGray3
        }
        return UIColor(named: "E7E7EC")!
    }

    public var systemGray2: UIColor {
        if #available(iOS 13, *) {
            return .systemGray2
        }
        return UIColor(named: "F2F2F5")!
    }

    public var systemGray: UIColor {
        if #available(iOS 13, *) {
            return .systemGray
        }
        return UIColor(named: "F9FAFB")!
    }

    public var systemBackground: UIColor {
        if #available(iOS 13, *) {
            return .systemBackground
        }
        return .white
    }

    public var secondarySystemBackground: UIColor {
        if #available(iOS 13, *) {
            return .secondarySystemBackground
        }
        return UIColor(named: "F2F2F5")!
    }

    public var tertiarySystemBackground:  UIColor {
        if #available(iOS 13, *) {
            return .tertiarySystemBackground
        }
        return .red
    }

    public var opaqueSeparator: UIColor {
        if #available(iOS 13, *) {
            return .opaqueSeparator
        }
        return UIColor(named: "38383A")!
    }

    public var separator: UIColor {
        if #available(iOS 13, *) {
            return .separator
        }
        return UIColor(named: "B0B0B6")!
    }

    let blue    = UIColor.systemBlue
    let green   = UIColor.systemGreen
    let orange  = UIColor.systemOrange
    let pink    = UIColor.systemPink
    let purple  = UIColor.systemPurple
    let red     = UIColor.systemRed
    let teal    = UIColor.systemTeal
    let yellow  = UIColor.systemYellow
    let black   = UIColor.black
    let white   = UIColor.white
    let primary = UIColor.systemIndigo
}
