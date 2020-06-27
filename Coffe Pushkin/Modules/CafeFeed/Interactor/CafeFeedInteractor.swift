//
//  CafeFeedInteractor.swift
//  Coffe Pushkin
//
//  Created by Тимур on 17.06.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import Foundation

final class CafeFeedInteractor {

    weak var output: CafeFeedInteractorOutput?
}

extension CafeFeedInteractor: CafeFeedInteractorInput {

    func requestFeed() {
        output?.set(error: .fetchFeedError)
    }
}
