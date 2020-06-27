//
//  PrimaryButton.swift
//  Coffe Pushkin
//
//  Created by Тимур on 24.05.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import Foundation
import UIKit

class PrimaryButton: Button {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupAppearance()
    }

    override var intrinsicContentSize: CGSize {
        let originIntrinsicContentSize = super.intrinsicContentSize
        return CGSize(
            width: originIntrinsicContentSize.width + titleEdgeInsets.left + titleEdgeInsets.right,
            height: originIntrinsicContentSize.height + titleEdgeInsets.top + titleEdgeInsets.bottom
        )
    }

    private func setupAppearance() {
        clipsToBounds = true
        layer.cornerRadius = 4.0

        setTitleColor(Colors.shared.white, for: .normal)
        setTitleColor(Colors.shared.systemGray3, for: .highlighted)
        titleEdgeInsets = UIEdgeInsets(top: 14.0, left: 16.0, bottom: 14.0, right: 16.0)

        backgroundColor = Colors.shared.primary
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupAppearance()
    }
}
