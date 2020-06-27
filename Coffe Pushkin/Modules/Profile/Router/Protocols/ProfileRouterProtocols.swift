//
//  ProfileRouterProtocols.swift
//  Coffe Pushkin
//
//  Created by Тимур on 25.05.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import Foundation

protocol ProfileRouterInput: class {
    func dismiss(onClose: (() -> Void)?)
}
