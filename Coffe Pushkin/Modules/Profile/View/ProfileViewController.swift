//
//  ProfileViewController.swift
//  Coffe Pushkin
//
//  Created by Тимур on 25.05.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import Foundation
import UIKit

final class ProfileViewController: UIViewController, ProfileViewProtocol {
    
    var output: ProfileViewOutput?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        output?.viewDidLoad()
        view.backgroundColor = .red
//        embedViews()
//        setupLayout()
//        setupAppearance()
//        setupBehaviour()
    }
    
    func set() {
        
    }
}
