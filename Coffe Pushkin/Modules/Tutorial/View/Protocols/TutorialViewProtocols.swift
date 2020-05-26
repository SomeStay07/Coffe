//
//  TutorialViewProtocols.swift
//  Coffe Pushkin
//
//  Created by Тимур on 23.05.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import Foundation

protocol TutorialViewInput: class {
    func set(viewModels: [CommonPageViewController.ViewModel])
}

protocol TutorialViewOutput {
    func viewDidLoad()
}

protocol TutorialViewProtocol: TutorialViewInput {
    var output: TutorialViewOutput? { get set }
}
