//
//  PresentationController.swift
//  Coffe Pushkin
//
//  Created by Тимур on 18.06.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import UIKit

class PresentationController: UIPresentationController {

    var driver: TransitionDriver!

    override var shouldPresentInFullscreen: Bool {
        return false
    }

    override var frameOfPresentedViewInContainerView: CGRect {
        let bounds = containerView!.bounds
        let halfHeight = bounds.height / 2
        return CGRect(
            x: 0,
            y: halfHeight,
            width: bounds.width,
            height: halfHeight
        )
    }

    override func presentationTransitionWillBegin() {
        super.presentationTransitionWillBegin()

        containerView?.addSubview(presentedView!)
    }

    override func containerViewDidLayoutSubviews() {
        super.containerViewDidLayoutSubviews()

        presentedView?.frame = frameOfPresentedViewInContainerView
    }

    override func presentationTransitionDidEnd(_ completed: Bool) {
        super.presentationTransitionDidEnd(completed)

        if completed {
            driver.direction = .dismiss
        }
    }
}
