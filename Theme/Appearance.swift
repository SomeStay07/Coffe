//
//  Appearance.swift
//  Coffe Pushkin
//
//  Created by Тимур on 16.06.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import UIKit

final class Appearance {

    static func applyAppearance() {
        tabBarAppearance()
        navigationBarAppearance()
    }

    private static func tabBarAppearance() {
        let blurEffect = UIBlurEffect(style: .systemThickMaterial)
        let blurView = UIVisualEffectView(effect: blurEffect)

        let tabBar = UITabBar.appearance()
        tabBar.tintColor = Colors.shared.label
        tabBar.unselectedItemTintColor = Colors.shared.systemGray
        tabBar.addSubview(blurView)
    }

    private static func navigationBarAppearance() {
        let blurEffect = UIBlurEffect(style: .regular)
        let blurView = UIVisualEffectView(effect: blurEffect)

        let navigationBar = UINavigationBar.appearance()
        navigationBar.isTranslucent = false
        navigationBar.barStyle = .default

        navigationBar.shadowImage = UIImage.shadowImage(with: Colors.shared.separator)
        navigationBar.tintColor = .red
        navigationBar.titleTextAttributes = [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18, weight: .bold),
            NSAttributedString.Key.foregroundColor: Colors.shared.label
        ]
        navigationBar.addSubview(blurView)
    }
}
