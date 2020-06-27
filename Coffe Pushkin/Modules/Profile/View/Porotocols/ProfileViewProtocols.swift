//
//  ProfileViewProtocols.swift
//  Coffe Pushkin
//
//  Created by Тимур on 25.05.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import Foundation

protocol ProfileViewInput: class {
    func set(state: ProfileViewState)
}

protocol ProfileViewOutput: class {
    func viewLoaded()
    func viewWillAppear()
    func viewDidAppear()
}

protocol ProfileViewProtocol: ProfileViewInput {
    var output: ProfileViewOutput? { get set }
}

enum ProfileViewState {
    case hasData([CouponCollectionCell.ViewModel])
    case noData
    case error
    case loading
}
