//
//  ProfilePresenter.swift
//  Coffe Pushkin
//
//  Created by Тимур on 25.05.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import Foundation

final class ProfilePresenter {
    
    private weak var view: ProfileViewInput?
    private let router: ProfileRouterInput
    
    // MARK: Init
    
    init(
        view    : ProfileViewInput,
        router  : ProfileRouterInput
    ) {
        self.view    = view
        self.router  = router
    }
}
