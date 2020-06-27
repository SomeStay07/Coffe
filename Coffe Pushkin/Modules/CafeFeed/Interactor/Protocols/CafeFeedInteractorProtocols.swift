//
//  CafeFeedInteractorProtocols.swift
//  Coffe Pushkin
//
//  Created by Тимур on 17.06.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import Foundation

enum CafeFeedInteractorError {
    case fetchFeedError
    case noInternetError
}

protocol CafeFeedInteractorInput: class {
    func requestFeed()
}

protocol CafeFeedInteractorOutput: class {
    func set(error: CafeFeedInteractorError)
}
