//
//  ProfileViewProtocols.swift
//  Coffe Pushkin
//
//  Created by Тимур on 25.05.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import Foundation

protocol ProfileViewInput: class {
   func set()
}

protocol ProfileViewOutput: class {
     func viewDidLoad()
}

protocol ProfileView: ProfileViewInput {
    var output: ProfileViewOutput? { get set }
}
