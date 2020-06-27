//
//  Fonts.swift
//  Coffe Pushkin
//
//  Created by Тимур on 24.05.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import UIKit

public enum Fonts {
    case titleExtraLarge
    case titleLarge
    case subtitleLarge
    case title
    case subtitle
    case headline
    case body
    case headlineSmall
    case bodySmall
    case caption
    case footnote

    public var font: UIFont {
        switch self {
        case .titleExtraLarge:
            return UIFont.systemFont(ofSize: 34, weight: .semibold)
        case .titleLarge:
            return UIFont.systemFont(ofSize: 24, weight: .semibold)
        case .subtitleLarge:
            return UIFont.systemFont(ofSize: 24, weight: .regular)
        case .title:
            return UIFont.systemFont(ofSize: 18, weight: .semibold)
        case .subtitle:
            return UIFont.systemFont(ofSize: 18, weight: .regular)
        case .headline:
            return UIFont.systemFont(ofSize: 16, weight: .semibold)
        case .body:
            return UIFont.systemFont(ofSize: 16, weight: .regular)
        case .headlineSmall:
            return UIFont.systemFont(ofSize: 14, weight: .semibold)
        case .bodySmall:
            return UIFont.systemFont(ofSize: 14, weight: .regular)
        case .caption:
            return UIFont.systemFont(ofSize: 12, weight: .semibold)
        case .footnote:
            return UIFont.systemFont(ofSize: 12, weight: .regular)
        }
    }
}
