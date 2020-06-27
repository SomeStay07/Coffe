//
//  ToastView.swift
//  Coffe Pushkin
//
//  Created by Тимур on 17.06.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import UIKit

final class ToastView: UIView {

    private let titleLabel = TitleLabel()
    private let descriptionLabel = BodyLabel()

    override init(frame: CGRect) {
        super.init(frame: frame)

        embedViews()
        setupLayout()
        setupAppearance()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func embedViews() {
        addSubview(titleLabel)
        addSubview(descriptionLabel)
    }

    private func setupLayout() {
        titleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self.snp.top).offset(12)
            make.centerX.equalTo(self.snp.centerX)
        }

        descriptionLabel.snp.makeConstraints { (make) in
            make.top.equalTo(titleLabel.snp.bottom).offset(4)
            make.leading.equalTo(self.snp.leading).offset(4)
            make.trailing.equalTo(self.snp.trailing).offset(-4)
        }
    }

    private func setupAppearance() {
        titleLabel.textColor = Colors.shared.white
        titleLabel.textAlignment = .center

        descriptionLabel.textColor = Colors.shared.white
        descriptionLabel.textAlignment = .center
    }
}

extension ToastView {
    struct ViewModel {
        let title: String
        let description: String
        let isEnabled: Bool
    }

    func set(viewModel: ViewModel) {
        titleLabel.text = viewModel.title
        descriptionLabel.text = viewModel.description
        backgroundColor = viewModel.isEnabled ? Colors.shared.green.withAlphaComponent(0.7) : Colors.shared.yellow.withAlphaComponent(0.7)
    }
}
