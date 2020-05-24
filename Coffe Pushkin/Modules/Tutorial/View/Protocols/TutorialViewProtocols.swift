//
//  TutorialViewProtocols.swift
//  Coffe Pushkin
//
//  Created by Тимур on 23.05.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import Foundation

protocol TutorialViewOutput {
    func viewLoaded()
}

protocol TutorialViewInput: class {
    func set(viewModels: [CommonPageViewController.ViewModel])
}

protocol TutorialViewProtocol: TutorialViewInput {
    var output: TutorialViewOutput? { get set }
}
