//
//  TutorialPresenter.swift
//  Coffe Pushkin
//
//  Created by Тимур on 23.05.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import Foundation
import UIKit

final class TutorialPresenter {

    // MARK: Components

    private weak var view: TutorialViewInput?

    private let router: TutorialRouterInput

    // MARK: Init

    init(
        view  : TutorialViewInput,
        router: TutorialRouterInput
    ) {
        self.view    = view
        self.router  = router
    }
}

// MARK: CinemaNoticeViewOutput

extension TutorialPresenter: TutorialViewOutput {

    func viewDidLoad() {
        view?.set(viewModels: makePages())
    }
}

private extension TutorialPresenter {

    func buildPage(
        _ image: UIImage,
        _ title: String,
        _ description: String
    ) -> CommonPageViewController.ViewModel {
        return CommonPageViewController.ViewModel(
            image: image,
            title: title,
            message: description
        )
    }

    func makePages() -> [CommonPageViewController.ViewModel] {

        let firstTutorial  = buildPage(
            Images.Templates.coffee.image,
            Strings.FirstTutorial.title.localized,
            Strings.FirstTutorial.description.localized
        )

        let secondTutorial = buildPage(
            Images.Templates.shop.image,
            Strings.SecondTutorial.title.localized,
            Strings.SecondTutorial.description.localized
        )

        let thirdTutorial = buildPage(
            Images.Templates.ufo.image,
            Strings.ThirdTutorial.title.localized,
            Strings.ThirdTutorial.description.localized
        )

        let fourthTutorial = buildPage(
            Images.Templates.bubbleTea.image,
            Strings.FourthTutorial.title.localized,
            Strings.FourthTutorial.description.localized
        )

        return [firstTutorial, secondTutorial, thirdTutorial, fourthTutorial]
    }
}
