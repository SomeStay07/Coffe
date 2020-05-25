//
//  CommonPageViewController.swift
//  Coffe Pushkin
//
//  Created by Тимур on 23.05.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

final class CommonPageViewController: UIViewController {
    
    // MARK: Subviews
    
    private let imageView      = UIImageView()
    private let titleLabel     = LabelTitle3()
    private let messageLabel   = LabelCaption1()
    
    // MARK: Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        embedViews()
        setupLayout()
        setupAppearance()
    }
    
    init(with models: ViewModel) {
        super.init(nibName: nil, bundle: nil)
        set(viewModel: models)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Configuring
    
    func set(viewModel: ViewModel) {
        // image
        imageView.image = viewModel.image
        // title
        titleLabel.text = viewModel.title
        // message
        messageLabel.text = viewModel.message
    }
}

// MARK: Setup

private extension CommonPageViewController {
    
    func embedViews() {
        [   imageView,
            titleLabel,
            messageLabel
        ].forEach { view.addSubview($0) }
    }
    
    func setupLayout() {
        imageView.snp.makeConstraints { (make) in
            make.top.equalTo(view.snp.top).offset(48)
            make.leading.equalTo(view.snp.leading)
            make.trailing.equalTo(view.snp.trailing)
            make.height.equalTo(view.frame.height / 2)
        }
        
        titleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(imageView.snp.bottom).offset(24)
            make.centerX.equalTo(view.snp.centerX)
        }
        
        messageLabel.snp.makeConstraints { (make) in
            make.top.equalTo(titleLabel.snp.bottom).offset(16)
            make.leading.equalTo(view.snp.leading).offset(18)
            make.trailing.equalTo(view.snp.trailing).offset(-18)
        }
    }
    
    func setupAppearance() {
        view.backgroundColor = BasiColors.darkViolet.color
        
        titleLabel.textColor = GrayColors.white.color
        messageLabel.textColor = GrayColors.white.color
        
        messageLabel.numberOfLines = 0
        messageLabel.textAlignment = .center
    }
}

extension CommonPageViewController {
    
    struct ViewModel {
        let image      : UIImage
        let title      : String
        let message    : String
    }
}
