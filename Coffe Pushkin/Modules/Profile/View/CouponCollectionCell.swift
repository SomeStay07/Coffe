//
//  CouponCollectionCell.swift
//  Coffe Pushkin
//
//  Created by Тимур on 30.05.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import Foundation
import SnapKit
import Kingfisher
import UIKit

final class CouponCollectionCell: UICollectionViewCell {

    private let couponImageView                   = UIImageView()
    private let dateLabel                         = UILabel()
    private let dateImageView                     = UIImageView()
    private let dateStackView                     = UIStackView()
    private let titleLabel                        = TitleLabel()
    private let descriptionLabel                  = SubtitleLabel()

    private let dateStackViewBackgroundView       = UIView()

    override init(frame: CGRect) {
        super.init(frame: frame)

        embedView()
        setupLayout()
        setupAppearance()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func embedView() {
        [ couponImageView,
          titleLabel,
          descriptionLabel,
          dateStackViewBackgroundView
        ].forEach { contentView.addSubview($0) }
        dateStackViewBackgroundView.addSubview(dateStackView)
    }

    private func setupLayout() {
        couponImageView.snp.makeConstraints { (make) in
            make.top.equalTo(contentView.snp.top)
            make.leading.equalTo(contentView.snp.leading)
            make.trailing.equalTo(contentView.snp.trailing)
            make.bottom.equalTo(contentView.snp.bottom)
        }

        dateImageView.snp.makeConstraints { (make) in
            make.height.width.equalTo(24)
        }

        dateStackView.snp.makeConstraints { (make) in
            make.centerX.equalTo(couponImageView.snp.centerX)
            make.centerY.equalTo(couponImageView.snp.centerY).offset(100)
            make.width.equalTo(120)
            make.height.equalTo(40)
        }

        dateStackViewBackgroundView.snp.makeConstraints { (make) in
            make.top.equalTo(dateStackView.snp.top)
            make.leading.equalTo(dateStackView.snp.leading).offset(-6)
            make.trailing.equalTo(dateStackView.snp.trailing).offset(+6)
            make.bottom.equalTo(dateStackView.snp.bottom)
        }

        titleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(dateStackViewBackgroundView.snp.bottom).offset(24)
            make.leading.equalTo(couponImageView.snp.leading).offset(12)
            make.trailing.equalTo(couponImageView.snp.trailing).offset(-12)
        }

        descriptionLabel.snp.makeConstraints { (make) in
            make.top.equalTo(titleLabel.snp.bottom).offset(8)
            make.bottom.lessThanOrEqualTo(couponImageView.snp.bottom).offset(-8)
            make.leading.equalTo(couponImageView.snp.leading).offset(16)
            make.trailing.equalTo(couponImageView.snp.trailing).offset(-16)
        }
    }

    private func setupAppearance() {
        couponImageView.backgroundColor = Colors.shared.secondarySystemBackground
        couponImageView.clipsToBounds = true
        couponImageView.layer.cornerRadius = 8
        couponImageView.contentMode = .scaleToFill
        couponImageView.kf.indicatorType = .activity

        dateImageView.image = #imageLiteral(resourceName: "schedule")

        dateStackView.spacing = 5
        dateStackView.axis = .horizontal
        dateStackView.alignment = .center
        dateStackView.distribution = .fillProportionally
        dateStackView.addArrangedSubview(dateImageView)
        dateStackView.addArrangedSubview(dateLabel)

        dateStackViewBackgroundView.backgroundColor = Colors.shared.black
        dateStackViewBackgroundView.clipsToBounds = true
        dateStackViewBackgroundView.alpha = 0.7
        dateStackViewBackgroundView.layer.cornerRadius = 20

        dateLabel.textColor = UIColor.white

        titleLabel.textColor = Colors.shared.black
        titleLabel.textAlignment = .center
        titleLabel.numberOfLines = 0

        descriptionLabel.textColor = Colors.shared.black.withAlphaComponent(0.7)
        descriptionLabel.textAlignment = .center
        descriptionLabel.numberOfLines = 0
    }
}

extension CouponCollectionCell {
    // MARK: ViewModel
    struct ViewModel {
        let couponImageView: UIImage
        let date           : String
        let title          : String
        let description    : String
        let onClick        : () -> Void
    }

    func apply(viewModel: ViewModel) {
        couponImageView.image     = viewModel.couponImageView
        dateLabel.text            = viewModel.date
        titleLabel.text           = viewModel.title
        descriptionLabel.text     = viewModel.description
    }
}
