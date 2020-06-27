//
//  SplashViewController.swift
//  Coffe Pushkin
//
//  Created by Тимур on 16.06.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import UIKit
import SnapKit

class SplashViewController: UIViewController {

    private let backgroundImage     = UIImageView()
    private let starsStarImageView  = UIImageView()
    private let secondSarsImageView = UIImageView()
    private let thirdStarsImageView = UIImageView()
    private let roadImageView       = UIImageView()
    private let firstPalmImageView  = UIImageView()
    private let secondPalmImageView = UIImageView()
    private let carImageView        = UIImageView()
    private let nameLabel           = TitleLabel()

    override func viewDidLoad() {
        super.viewDidLoad()

        embedViews()
        setupLayout()
        setupAppearance()
        showMainScreen()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        setupAnimation()
    }

    // MARK: - Embed Views
    private func embedViews() {
        view.addSubview(backgroundImage)
        [   nameLabel,
            carImageView,
            starsStarImageView,
            secondSarsImageView,
            thirdStarsImageView,
            roadImageView,
            firstPalmImageView,
            secondPalmImageView
        ].forEach {
            backgroundImage.addSubview($0)
        }
    }

    // MARK: - Setup Layout
    private func setupLayout() {
        backgroundImage.snp.makeConstraints { (make) in
            make.top.equalTo(view.snp.top)
            make.leading.equalTo(view.snp.leading)
            make.trailing.equalTo(view.snp.trailing)
            make.bottom.equalTo(view.snp.bottom)
        }

        roadImageView.snp.makeConstraints { (make) in
            make.top.equalTo(view.snp.bottom)
            make.leading.equalTo(view.snp.leading)
        }

        firstPalmImageView.snp.makeConstraints { (make) in
            make.bottom.equalTo(view.snp.bottom).offset(-42)
            make.trailing.equalTo(view.snp.trailing).offset(-60)
        }

        secondPalmImageView.snp.makeConstraints { (make) in
            make.bottom.equalTo(view.snp.bottom).offset(-42)
            make.trailing.equalTo(view.snp.trailing).offset(-45)
        }

        carImageView.snp.makeConstraints { (make) in
            make.bottom.equalTo(view.snp.bottom).offset(-50)
            make.leading.equalTo(view.snp.trailing)
            make.height.equalTo(29)
            make.width.equalTo(120)
        }

        starsStarImageView.snp.makeConstraints { (make) in
            make.top.equalTo(view.snp.top).offset(100)
            make.leading.equalTo(view.snp.trailing)
        }

        secondSarsImageView.snp.makeConstraints { (make) in
            make.bottom.equalTo(view.snp.top)
            make.centerX.equalTo(view.snp.centerX)
        }

        thirdStarsImageView.snp.makeConstraints { (make) in
            make.bottom.equalTo(view.snp.top)
            make.leading.equalTo(view.snp.trailing)
        }

        nameLabel.snp.makeConstraints { (make) in
            make.centerX.equalTo(view.snp.centerX)
            make.centerY.equalTo(view.snp.centerY).offset(-70)
        }
    }

    // MARK: - Setup Appearance
    private func setupAppearance() {
        backgroundImage.image = Images.Templates.evening.image
        backgroundImage.contentMode = .scaleAspectFill

        // TODO: replace with settings name
        nameLabel.text = "Добрый вечер, \nТимур!"
        nameLabel.textAlignment = .center
        nameLabel.numberOfLines = 2
        nameLabel.textColor = Colors.shared.white

        [ nameLabel,
          firstPalmImageView,
          secondPalmImageView
        ].forEach {
            $0.alpha = 0
        }

        [ starsStarImageView,
          secondSarsImageView,
          thirdStarsImageView
        ].forEach {
            $0.image = Images.Templates.stars.image
        }

        carImageView.image = Images.Templates.car.image
        roadImageView.image = Images.Templates.road.image
        firstPalmImageView.image = Images.Templates.palm.image
        secondPalmImageView.image = Images.Templates.palm.image
        secondPalmImageView.transform = CGAffineTransform(rotationAngle: 6)
    }

    private func showMainScreen() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
            let rootVC = RootViewController()
            rootVC.modalPresentationStyle = .fullScreen
            rootVC.modalTransitionStyle = .crossDissolve

            RootAssembly.assembly(with: rootVC)

            self?.present(rootVC, animated: true, completion: nil)
        }
    }

    // MARK: - Setup Animation
    private func setupAnimation() {
        UIView.animate(
            withDuration: 0.8,
            delay: 0,
            options: .curveEaseOut,
            animations: { [weak self] in
                self?.nameLabel.transform = CGAffineTransform(translationX: 0, y: 80)
                self?.nameLabel.alpha = 1
        })

        UIView.animate(
            withDuration: 0.4,
            delay: 0,
            options: .curveEaseOut,
            animations: { [weak self] in
                self?.starsStarImageView.transform = CGAffineTransform(
                    translationX: -60,
                    y: 40
                )

                self?.secondSarsImageView.transform = CGAffineTransform(
                    translationX: -70,
                    y: 110
                )

                self?.thirdStarsImageView.transform = CGAffineTransform(
                    translationX: -60,
                    y: 65
                )
        })

        UIView.animate(
            withDuration: 0.1,
            delay: 0,
            options: .curveEaseOut,
            animations: { [weak self] in
                self?.roadImageView.transform = CGAffineTransform(
                    translationX: 0,
                    y: -50
                )
        })

        UIView.animate(
            withDuration: 0.2,
            delay: 0.1,
            options: .curveEaseOut,
            animations: { [weak self] in
                self?.firstPalmImageView.alpha = 1
                self?.secondPalmImageView.alpha = 1
        })

        UIView.animate(
            withDuration: 1,
            delay: 0,
            options: .curveEaseOut,
            animations: { [weak self] in
                self?.carImageView.transform = CGAffineTransform(
                    translationX: -250,
                    y: 0
                )
        })
    }
}
