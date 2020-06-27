//
//  CafeFeedPresenter.swift
//  Coffe Pushkin
//
//  Created by Тимур on 25.05.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import Foundation

final class CafeFeedPresenter {

    private weak var view: CafeFeedViewInput?
    private let router: CafeFeedRouterInput
    private let interactor: CafeFeedInteractorInput

    init(
        view      : CafeFeedViewInput,
        router    : CafeFeedRouterInput,
        interactor: CafeFeedInteractorInput
    ) {
        self.view       = view
        self.router     = router
        self.interactor = interactor
    }
}

extension CafeFeedPresenter: CafeFeedViewOutput {

    func viewDidLoad() {
        interactor.requestFeed()
    }
}

extension CafeFeedPresenter: CafeFeedInteractorOutput {

    func set(error: CafeFeedInteractorError) {
        switch error {
        case .fetchFeedError:
            view?.set(errorViewModel: .init(
                image: Images.Templates.emptyData.image,
                title: Strings.Messages.emptyDataTitle.localized,
                description: Strings.Messages.emptyDataDescription.localized,
                buttonText: Strings.Messages.update.localized,
                buttonHandler: { [weak self] in
                    self?.router.presentPopup(viewModel: .init(
                        icon: Images.Templates.coffee.image,
                        title: Strings.Popup.Drinks.title.localized,
                        description: Strings.Popup.Drinks.description.localized,
                        onClick: {
                            print("Hello button action")
                    }))
            }))
            view?.set(toastViewModel: .init(
                title: Strings.Messages.emptyDataToastTitle.localized,
                description: Strings.Messages.emptyDataToastDescription.localized,
                isEnabled: false
                )
            )
        case .noInternetError:
            view?.set(errorViewModel: .init(
                image: Images.Templates.car.image,
                title: Strings.Messages.noInternetTitle.localized,
                description: Strings.Messages.noInternetDescription.localized,
                buttonText: Strings.Messages.update.localized,
                buttonHandler: {
                    print("error handler")
            }))
        }
    }
}
