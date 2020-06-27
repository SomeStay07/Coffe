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
    private let titleLabel     = TitleLabel()
    private let messageLabel   = SubtitleLabel()

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
            make.bottom.equalTo(view.snp.centerY)
            make.centerX.equalTo(view.snp.centerX)
            make.height.width.equalTo(view.frame.height / 4)
        }

        titleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(imageView.snp.bottom).offset(40)
            make.centerX.equalTo(view.snp.centerX)
        }

        messageLabel.snp.makeConstraints { (make) in
            make.top.equalTo(titleLabel.snp.bottom).offset(26)
            make.leading.equalTo(view.snp.leading).offset(18)
            make.trailing.equalTo(view.snp.trailing).offset(-18)
        }
    }

    func setupAppearance() {
        view.backgroundColor = Colors.shared.systemBackground

        titleLabel.textColor = Colors.shared.label
        messageLabel.textColor = Colors.shared.secondaryLabel

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
