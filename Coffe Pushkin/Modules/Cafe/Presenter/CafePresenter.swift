//
//  CafePresenter.swift
//  Coffe Pushkin
//
//  Created by Тимур on 25.05.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import Foundation

final class CafePresenter {
    
    private weak var view: CafeViewInput?
    private let router: CafeRouterInput
    
    init(
        view  : CafeViewInput,
        router: CafeRouterInput
    ) {
        self.view   = view
        self.router = router
    }
}

extension CafePresenter: CafeViewOutput {
    
    func viewDidLoad() {
        
    }
}
