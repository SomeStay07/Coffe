//
//  CafeFeedAssembly.swift
//  Coffe Pushkin
//
//  Created by Тимур on 25.05.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import Foundation

final class CafeFeedAssembly {

    static func assembly(with view: CafeFeedViewProtocol) {
        let router = CafeFeedRouter(transitionCoordinator: view)
        let interactor = CafeFeedInteractor()

        let presenter = CafeFeedPresenter(
            view: view,
            router: router,
            interactor: interactor
        )

        view.output = presenter
        interactor.output = presenter
    }
}
