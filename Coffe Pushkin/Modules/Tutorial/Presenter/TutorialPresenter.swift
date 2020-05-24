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
        view    : TutorialViewInput,
        router  : TutorialRouterInput
    ) {
        self.view    = view
        self.router  = router
    }
}

// MARK: CinemaNoticeViewOutput

extension TutorialPresenter: TutorialViewOutput {
    
    func viewLoaded() {
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
        
        let welcomePage  = buildPage(
            #imageLiteral(resourceName: "coffe"),
            Strings.Tutorial.WelcomePage.title.localized,
            Strings.Tutorial.WelcomePage.description.localized
        )
        
        let locationPagee = buildPage(
            #imageLiteral(resourceName: "ufo"),
            Strings.Tutorial.LocationPage.title.localized,
            Strings.Tutorial.LocationPage.description.localized
        )
        
        let notificationPage = buildPage(
            #imageLiteral(resourceName: "push"),
            Strings.Tutorial.NotificationPage.title.localized,
            Strings.Tutorial.NotificationPage.description.localized
        )
        
        return [welcomePage, locationPagee, notificationPage]
    }
}
