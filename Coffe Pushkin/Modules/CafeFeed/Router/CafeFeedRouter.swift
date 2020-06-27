//
//  CafeFeedRouter.swift
//  Coffe Pushkin
//
//  Created by Тимур on 25.05.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import UIKit

final class CafeFeedRouter: CafeFeedRouterInput {

    private let transition = PanelTransition()
    private weak var transitionCoordinator: TransitionCoordinator?

    init(transitionCoordinator: TransitionCoordinator) {
        self.transitionCoordinator = transitionCoordinator
    }

    func presentPopup(viewModel: ChildViewController.ViewModel) {
        let child = ChildViewController()
        child.set(viewModel: viewModel)
        child.transitioningDelegate = transition
        child.modalPresentationStyle = .custom

        transitionCoordinator?.present(with: child, animated: true)
    }
}
