//
//  CafeFeedViewProtocols.swift
//  Coffe Pushkin
//
//  Created by Тимур on 25.05.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import Foundation

protocol CafeFeedViewInput: class {
    func set(errorViewModel: ErrorScreen.ViewModel)
    func set(toastViewModel: ToastView.ViewModel)
}

protocol CafeFeedViewOutput: class {
    func viewDidLoad()
}

protocol CafeFeedViewProtocol: CafeFeedViewInput, TransitionCoordinator {
    var output: CafeFeedViewOutput? { get set }
}
