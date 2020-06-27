//
//  Images.swift
//  Coffe Pushkin
//
//  Created by Тимур on 16.06.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import UIKit

enum Images {
    enum Icons: String {
        case home
        case profile
        case order
        case settings

        var image: UIImage {
            return UIImage(named: self.rawValue)!
        }
    }

    enum Templates: String {
        case coffee
        case bubbleTea
        case push
        case ufo
        case shop
        case evening
        case stars
        case road
        case palm
        case car
        case emptyData

        var image: UIImage {
            return UIImage(named: self.rawValue)!
        }
    }
}
