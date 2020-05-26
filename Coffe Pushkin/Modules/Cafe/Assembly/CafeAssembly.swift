//
//  CafeAssembly.swift
//  Coffe Pushkin
//
//  Created by Тимур on 25.05.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import Foundation

final class CafeAssembly {
    
    static func assembly(with view: CafeViewProtocol) {
        
        let presenter = CafePresenter(view: view, router: CafeRouter())
        
        view.output = presenter
    }
}
