//
//  UIVIewController+TransitionCoordinator.swift
//  Coffe Pushkin
//
//  Created by Тимур on 18.06.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import Foundation
import UIKit

protocol TransitionCoordinator: class {

    func push(with viewController: UIViewController, animated: Bool)

    func present(with viewController: UIViewController, animated: Bool)

    func dismiss(_ animated: Bool, completion: (() -> Void)?)
}

extension TransitionCoordinator where Self: UIViewController {

    func push(with viewController: UIViewController, animated: Bool = true) {
        if let parentNavigationController = parent as? UINavigationController {
            parentNavigationController.pushViewController(viewController, animated: animated)
        } else if let navigationController = self as? UINavigationController {
            navigationController.pushViewController(viewController, animated: animated)
        }
    }

    func present(with viewController: UIViewController, animated: Bool = true) {
        present(viewController, animated: animated, completion: nil)
    }

    func dismiss(_ animated: Bool = true, completion: (() -> Void)? = nil) {
        if let parentNavigationController = parent as? UINavigationController,
            parentNavigationController.children.count > 1 {
            parentNavigationController.popViewController(animated: animated)
        } else if let presenting = presentingViewController {
            presenting.dismiss(animated: animated, completion: completion)
        } else {
            removeFromParent()
            view.removeFromSuperview()
        }
    }
}
