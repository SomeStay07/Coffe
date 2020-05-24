//
//  PrimaryButton.swift
//  Coffe Pushkin
//
//  Created by Тимур on 24.05.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import Foundation
import UIKit
// Button with action
class PrimaryButtonLabel: Button {
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setupAppearance()
    }
    
    override public var intrinsicContentSize: CGSize {
        let originIntrinsicContentSize = super.intrinsicContentSize
        return CGSize(
            width: originIntrinsicContentSize.width + titleEdgeInsets.left + titleEdgeInsets.right,
            height: originIntrinsicContentSize.height + titleEdgeInsets.top + titleEdgeInsets.bottom
        )
    }
    
    private func setupAppearance() {
        
        // Misc
        clipsToBounds = true
        layer.cornerRadius = 4.0
        
        // Title
        setTitleColor(GrayColors.black.color, for: .normal)
        setTitleColor(GrayColors.gray80.color, for: .highlighted)
        setTitleColor(GrayColors.gray60.color, for: .disabled)
        titleEdgeInsets = UIEdgeInsets(top: 14.0, left: 16.0, bottom: 14.0, right: 16.0)
        
        // Background color
        backgroundColor = CoffeColors.accent.color
        backgroundColorForNormalState = GrayColors.white.color
        backgroundColorForDisabledState = GrayColors.gray20.color
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupAppearance()
    }
}
