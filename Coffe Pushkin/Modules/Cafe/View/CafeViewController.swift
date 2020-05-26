//
//  CafeViewController.swift
//  Coffe Pushkin
//
//  Created by Тимур on 25.05.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import Foundation
import UIKit

final class CafeViewController: UIViewController, CafeViewProtocol {
    
    var output: CafeViewOutput?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .yellow
        output?.viewDidLoad()
    }
    
    func set() {
        
    }
}
