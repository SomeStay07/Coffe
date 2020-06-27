//
//  UIImage+shadowImage.swift
//  Coffe Pushkin
//
//  Created by Тимур on 16.06.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import UIKit

extension UIImage {
    class func shadowImage(with color: UIColor) -> UIImage {
        return UIImage.with(
            color : color,
            size  : CGSize(width: 1, height: 1)
        ) ?? UIImage()
    }
}
