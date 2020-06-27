//
//  RootAssembly.swift
//  Coffe Pushkin
//
//  Created by Тимур on 16.06.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import UIKit

final class RootAssembly {

    static func assembly(with view: RootViewController) {

        TabBarAssembler().assembly(tabBar: view)
    }
}
