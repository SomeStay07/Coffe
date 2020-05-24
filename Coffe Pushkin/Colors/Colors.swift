//
//  Colors.swift
//  Coffe Pushkin
//
//  Created by Тимур on 24.05.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import UIKit

enum BasiColors {
    case darkViolet
    
    var color: UIColor {
        switch self {
        case .darkViolet: return #colorLiteral(red: 0.1098039216, green: 0.1019607843, blue: 0.1450980392, alpha: 1)
        }
    }
}

enum CoffeColors {
    case primary
    case primaryDark
    case accent
    case accentPlus
    
    
    var color: UIColor {
        switch self {
        case .primary: return #colorLiteral(red: 0.2549019608, green: 0.2549019608, blue: 0.2352941176, alpha: 1)
        case .primaryDark: return #colorLiteral(red: 0.1137254902, green: 0.1137254902, blue: 0.1058823529, alpha: 1)
        case .accent: return #colorLiteral(red: 0.9333333333, green: 0.831372549, blue: 0.4745098039, alpha: 1)
        case .accentPlus: return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
}

enum GrayColors {
    case white
    case black
    case gray10
    case gray20
    case gray30
    case gray40
    case gray50
    case gray60
    case gray70
    case gray80
    
    var color: UIColor {
        switch self {
        case .white: return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        case .black: return #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        case .gray10: return #colorLiteral(red: 0.9764705882, green: 0.9803921569, blue: 0.9843137255, alpha: 1)
        case .gray20: return #colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.9607843137, alpha: 1)
        case .gray30: return #colorLiteral(red: 0.9058823529, green: 0.9058823529, blue: 0.9254901961, alpha: 1)
        case .gray40: return #colorLiteral(red: 0.8509803922, green: 0.8509803922, blue: 0.8745098039, alpha: 1)
        case .gray50: return #colorLiteral(red: 0.7803921569, green: 0.7803921569, blue: 0.8039215686, alpha: 1)
        case .gray60: return #colorLiteral(red: 0.6901960784, green: 0.6901960784, blue: 0.7137254902, alpha: 1)
        case .gray70: return #colorLiteral(red: 0.5764705882, green: 0.5803921569, blue: 0.6, alpha: 1)
        case .gray80: return #colorLiteral(red: 0.4470588235, green: 0.4470588235, blue: 0.462745098, alpha: 1)
        }
    }
}
