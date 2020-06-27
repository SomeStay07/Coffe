//
//  ChildViewController.swift
//  Coffe Pushkin
//
//  Created by Тимур on 18.06.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import UIKit
import SnapKit

final class ChildViewController: UIViewController {

    private let iconImageView = UIImageView()
    private let titleLabel = TitleLabel()
    private let descriptionLabel = BodyLabel()

    private let actionButton = PrimaryButton()
    private let dismissButton = UIButton()

    private var onClick: (() -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = Colors.shared.systemBackground
        view.layer.cornerRadius = 24
        view.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]

        embedViews()
        setupLayout()
        ssetupAppearance()
    }

    private func embedViews() {
        [ iconImageView,
          titleLabel,
          descriptionLabel,
          actionButton,
          dismissButton
        ].forEach { view.addSubview($0) }
    }

    private func setupLayout() {
        iconImageView.snp.makeConstraints { (make) in
            make.bottom.equalTo(titleLabel.snp.top).offset(-32)
            make.centerX.equalTo(view.snp.centerX)
            make.width.height.equalTo(80)
        }

        titleLabel.snp.makeConstraints { (make) in
            make.bottom.equalTo(descriptionLabel.snp.top).offset(-16)
            make.leading.equalTo(view.snp.leading).offset(12)
            make.trailing.equalTo(view.snp.trailing).offset(-12)
        }

        descriptionLabel.snp.makeConstraints { (make) in
            make.bottom.equalTo(actionButton.snp.top).offset(-24)
            make.leading.equalTo(view.snp.leading).offset(16)
            make.trailing.equalTo(view.snp.trailing).offset(-16)
        }

        actionButton.snp.makeConstraints { (make) in
            make.bottom.equalTo(view.snp.bottom).offset(-16)
            make.centerX.equalTo(view.snp.centerX)
            make.width.equalTo(view.bounds.width / 2)
            make.height.equalTo(48)
        }

        dismissButton.snp.makeConstraints { (make) in
            make.top.equalTo(view.snp.top).offset(14)
            make.trailing.equalTo(view.snp.trailing).offset(-12)
            make.height.width.equalTo(24)
        }
    }

    private func ssetupAppearance() {
//        iconImageView.image = Images.Templates.coffee.image

//        titleLabel.text = "Мы сделали для вас классные напитки!"
        titleLabel.textColor = Colors.shared.label
        titleLabel.numberOfLines = 0
        titleLabel.textAlignment = .center

//        descriptionLabel.text = "Только натуральные ингридиенты. Доступны к заказу каждый день."
        descriptionLabel.textColor = Colors.shared.secondaryLabel
        descriptionLabel.numberOfLines = 0
        descriptionLabel.textAlignment = .center

        actionButton.setTitle("Посмотреть", for: .normal)
        actionButton.addTarget(
            self,
            action: #selector(onClickHandler),
            for: .touchUpInside
        )
    }

    @objc func dismissSelf() {
        self.dismiss(animated: true)
    }

    @objc func onClickHandler() {
        onClick?()
    }
}

// MARK: - ViewModel
extension ChildViewController {
    struct ViewModel {
        let icon: UIImage
        let title: String
        let description: String
        let onClick: (() -> Void)?
    }

    func set(viewModel: ViewModel) {
        iconImageView.image = viewModel.icon
        titleLabel.text = viewModel.title
        descriptionLabel.text = viewModel.description
        onClick = viewModel.onClick
    }
}
