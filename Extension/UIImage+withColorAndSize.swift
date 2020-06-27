//
//  UIImage+withColorAndSize.swift
//  Coffe Pushkin
//
//  Created by Тимур on 16.06.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import UIKit

extension UIImage {

    class func with(color: UIColor, size: CGSize) -> UIImage? {

        let rect = CGRect(origin: .zero, size: size)

        UIGraphicsBeginImageContext(size)

        let image: UIImage? = UIGraphicsGetCurrentContext().flatMap {
            $0.setFillColor(color.cgColor)
            $0.fill(rect)
            return UIGraphicsGetImageFromCurrentImageContext()
        }

        UIGraphicsEndImageContext()

        return image
    }
}
