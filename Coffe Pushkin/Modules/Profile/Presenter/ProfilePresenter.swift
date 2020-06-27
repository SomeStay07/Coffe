//
//  ProfilePresenter.swift
//  Coffe Pushkin
//
//  Created by Тимур on 25.05.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import Foundation

final class ProfilePresenter {

    private weak var view: ProfileViewInput?
    private let router: ProfileRouterInput

    // MARK: Init

    init(
        view    : ProfileViewInput,
        router  : ProfileRouterInput
    ) {
        self.view    = view
        self.router  = router
    }
}

extension ProfilePresenter: ProfileViewOutput {
    func viewLoaded() {
        view?.set(state: .hasData(makeData()))
    }

    func viewWillAppear() {
    }

    func viewDidAppear() {

    }
}

private extension ProfilePresenter {

    func makeData() -> [CouponCollectionCell.ViewModel] {

        let discountCoupon = CouponCollectionCell.ViewModel(
            couponImageView: #imageLiteral(resourceName: "coupon_discount"),
            date: "До 31 мая",
            title: "Бесплатная доставка",
            description: "в мае",
            onClick: {}
        )

        let freeShipping = CouponCollectionCell.ViewModel(
            couponImageView: #imageLiteral(resourceName: "coupon_shipping"),
            date: "До 31 мая",
            title: "Бесплатная доставка",
            description: "в мае",
            onClick: {}
        )

        let plusGift = CouponCollectionCell.ViewModel(
            couponImageView: #imageLiteral(resourceName: "coupon_gift"),
            date: "До 12 июня",
            title: "Бесплатный подарок",
            description: "При любой покупки от 5000 рублей за раз",
            onClick: {}
        )

        return [discountCoupon, freeShipping, plusGift]
    }
}
