//
//  Button.swift
//  Coffe Pushkin
//
//  Created by Тимур on 24.05.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//
import UIKit

/// Base class for buttons
class Button: UIButton {
    
    private var _backgroundColorForNormalState: UIColor?
    private var _backgroundColorForDisabledState: UIColor?

    private var backgroundColorForNormalState: UIColor {
        set {
            _backgroundColorForNormalState = newValue
        }
        get {
            return _backgroundColorForNormalState ?? .clear
        }
    }

    private var backgroundColorForDisabledState: UIColor {
        set {
            _backgroundColorForDisabledState = newValue
        }
        get {
            return _backgroundColorForDisabledState  ?? .clear
        }
    }

    private var titleLabelFont: UIFont? {
        set {
            titleLabel?.font = newValue
        }
        get {
            return titleLabel?.font
        }
    }

    override var isEnabled: Bool {
        didSet {
            super.isEnabled = isEnabled
            if isEnabled {
                backgroundColor = backgroundColorForNormalState
            } else {
                backgroundColor = backgroundColorForDisabledState
            }
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        titleLabel?.minimumScaleFactor = 0.75
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        titleLabel?.minimumScaleFactor = 0.75
    }
}
