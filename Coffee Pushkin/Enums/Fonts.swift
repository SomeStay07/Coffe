//
//  Fonts.swift
//  Coffe Pushkin
//
//  Created by Тимур on 24.05.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import UIKit

public enum Fonts {
    case caption1
    case caption2
    case caption3
    case title1
    case title2
    case title3
    
    public var font: UIFont {
        switch self {
        case .caption1:
            return UIFont.systemFont(ofSize: 18.0, weight: .regular)
        case .caption2:
            return UIFont.systemFont(ofSize: 16.0, weight: .regular)
        case .caption3:
            return UIFont.systemFont(ofSize: 12.0, weight: .regular)
        case .title1:
            return UIFont.systemFont(ofSize: 26.0, weight: .bold)
        case .title2:
            return UIFont.systemFont(ofSize: 20.0, weight: .bold)
        case .title3:
            return UIFont.systemFont(ofSize: 18.0, weight: .bold)
        }
    }
}
