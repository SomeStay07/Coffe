//
//  TutorialAssembly.swift
//  Coffe Pushkin
//
//  Created by Тимур on 23.05.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import Foundation

final class TutorialAssembly {
    
    static func assembly(with view: TutorialViewProtocol) {
        view.output = TutorialPresenter(
            view: view,
            router: TutorialRouter()
        )
    }
}
