//
//  CafeFeedViewController.swift
//  Coffe Pushkin
//
//  Created by Тимур on 25.05.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import Foundation
import UIKit

final class CafeFeedViewController: UIViewController, CafeFeedViewProtocol {

    var output: CafeFeedViewOutput?

    private let errorScreen = ErrorScreen()
    private let errorToast  = ToastView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .yellow
        embedViews()
        setupLayout()
        output?.viewDidLoad()
        showToast()
    }

    private func embedViews() {
        view.addSubview(errorScreen)
        view.addSubview(errorToast)
    }

    private func setupLayout() {
        errorScreen.snp.makeConstraints { (make) in
            make.top.equalTo(view.snp.top)
            make.leading.equalTo(view.snp.leading)
            make.trailing.equalTo(view.snp.trailing)
            make.bottom.equalTo(view.snp.bottom)
        }

        errorToast.snp.makeConstraints { (make) in
            make.bottom.equalTo(view.snp.top)
            make.leading.equalTo(view.snp.leading)
            make.trailing.equalTo(view.snp.trailing)
            make.height.equalTo(70)
        }
    }

    private func showToast() {
        UIView.animate(
            withDuration: 0.6,
            delay: 1,
            options: .curveEaseOut,
            animations: { [weak self] in
                self?.errorToast.transform = CGAffineTransform(translationX: 0, y: 70)
            }, completion: { [weak self] _ in
                self?.hideToast()
        })
    }

    private func hideToast() {
        UIView.animate(
            withDuration: 0.6,
            delay: 6,
            options: .curveEaseIn,
            animations: { [weak self] in
                self?.errorToast.transform = CGAffineTransform(translationX: 0, y: 0)
        })
    }

    func set(errorViewModel: ErrorScreen.ViewModel) {
        errorScreen.set(viewModel: errorViewModel)
    }

    func set(toastViewModel: ToastView.ViewModel) {
        errorToast.set(viewModel: toastViewModel)
    }
}
