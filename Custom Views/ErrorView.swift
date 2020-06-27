//
//  ErrorView.swift
//  Coffe Pushkin
//
//  Created by Тимур on 17.06.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import UIKit

final class ErrorScreen: UIView {

    private let imageView = UIImageView()
    private let titleLabel = TitleLabel()
    private let descriptionLabel = BodyLabel()
    private let button = PrimaryButton()
    private var buttonHandler: (() -> Void)?

    override init(frame: CGRect) {
        super.init(frame: frame)

        embedViews()
        setupLayout()
        setupAppearance()
        button.addTarget(
            self,
            action: #selector(internalButtonHandler),
            for: .touchUpInside
        )
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @objc
    private func internalButtonHandler() {
        buttonHandler?()
    }

    private func embedViews() {
        [   imageView,
            titleLabel,
            descriptionLabel,
            button
        ].forEach {
            addSubview($0)
        }
    }

    private func setupAppearance() {
        backgroundColor = Colors.shared.systemBackground

        descriptionLabel.textColor = Colors.shared.secondaryLabel
        descriptionLabel.textAlignment = .center
        descriptionLabel.numberOfLines = 0

        titleLabel.textColor = Colors.shared.label
        titleLabel.textAlignment = .center
    }

    // MARK: - Setup Layout
    private func setupLayout() {
        imageView.snp.makeConstraints { (make) in
            make.bottom.equalTo(self.snp.centerY)
            make.centerX.equalTo(self.snp.centerX)
            make.width.height.equalTo(148)
        }

        titleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(imageView.snp.bottom).offset(24)
            make.leading.equalTo(self.snp.leading).offset(28)
            make.trailing.equalTo(self.snp.trailing).offset(-28)
        }

        descriptionLabel.snp.makeConstraints { (make) in
            make.top.equalTo(titleLabel.snp.bottom).offset(8)
            make.leading.equalTo(self.snp.leading).offset(28)
            make.trailing.equalTo(self.snp.trailing).offset(-28)
        }

        button.snp.makeConstraints { (make) in
            make.top.equalTo(descriptionLabel.snp.bottom).offset(22)
            make.centerX.equalTo(self.snp.centerX)
            make.width.equalTo(224)
            make.height.equalTo(48)
        }
    }
}

extension ErrorScreen {
    struct ViewModel {
        let image: UIImage
        let title: String
        let description: String
        let buttonText: String
        let buttonHandler: (() -> Void)?

        init(
            image: UIImage,
            title: String,
            description: String,
            buttonText: String,
            buttonHandler:  (() -> Void)?
        ) {
            self.image = image
            self.title = title
            self.description = description
            self.buttonText = buttonText
            self.buttonHandler = buttonHandler
        }
    }

    func set(viewModel: ViewModel) {
        imageView.image = viewModel.image
        titleLabel.text = viewModel.title
        descriptionLabel.text = viewModel.description
        button.setTitle(viewModel.buttonText, for: .normal)
        buttonHandler = viewModel.buttonHandler
    }
}
