//
//  TabBarAssembly.swift
//  Coffe Pushkin
//
//  Created by Тимур on 16.06.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import UIKit

/// Устанавливает контроллеры для таб бара
final class TabBarAssembler {

    func assembly(tabBar: UITabBarController) {
        let viewControllers = createViewControllers().map { $0.wrapped() }

        tabBar.setViewControllers(
            viewControllers,
            animated: true
        )
    }

    private func createViewControllers() -> [UIViewController] {
        return [ createCafeFeedModule(),
                 createProfileModule(),
                 createOrderModule(),
                 createSettingsModule()]
    }

    private func createCafeFeedModule() -> UIViewController {
        let viewController = CafeFeedViewController()

        CafeFeedAssembly.assembly(with: viewController)

        viewController.tabBarItem.title = Strings.TabBar.feed.localized
        viewController.tabBarItem.image = Images.Icons.home.image
        return viewController
    }

    private func createProfileModule() -> UIViewController {
        let viewController = ProfileViewController()

        ProfileAssembly.assembly(with: viewController)

        viewController.tabBarItem.title = Strings.TabBar.profile.localized
        viewController.tabBarItem.image = Images.Icons.profile.image
        return viewController
    }

    private func createOrderModule() -> UIViewController {
        let viewController = ProfileViewController()

        ProfileAssembly.assembly(with: viewController)

        viewController.tabBarItem.title = Strings.TabBar.order.localized
        viewController.tabBarItem.image = Images.Icons.order.image
        return viewController
    }

    private func createSettingsModule() -> UIViewController {
        let viewController = ProfileViewController()

        ProfileAssembly.assembly(with: viewController)

        viewController.tabBarItem.title = Strings.TabBar.settings.localized
        viewController.tabBarItem.image = Images.Icons.settings.image
        return viewController
    }
}
