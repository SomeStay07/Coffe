//
//  CafeViewProtocols.swift
//  Coffe Pushkin
//
//  Created by Тимур on 25.05.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import Foundation

protocol CafeViewInput: class {
    func set()
}

protocol CafeViewOutput: class {
    func viewDidLoad()
}

protocol CafeViewProtocol: CafeViewInput {
    var output: CafeViewOutput? { get set }
}
