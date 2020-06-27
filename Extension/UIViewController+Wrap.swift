//
//  UIViewController+Wrap.swift
//  Coffe Pushkin
//
//  Created by Тимур on 17.06.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import UIKit

extension UIViewController {
    func wrapped() -> UINavigationController {
        if let navigationController = self as? UINavigationController {
            navigationController.tabBarItem.image = self.tabBarItem.image
            return navigationController
        } else {
            return UINavigationController(rootViewController: self)
        }
    }
}
