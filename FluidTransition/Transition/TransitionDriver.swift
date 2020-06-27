//
//  TransitionDriver.swift
//  Coffe Pushkin
//
//  Created by Тимур on 18.06.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import UIKit

final class TransitionDriver: UIPercentDrivenInteractiveTransition {

    private weak var presentedController: UIViewController?
    private var panRecognizer: UIPanGestureRecognizer?

    // MARK: - Linking
    func link(to controller: UIViewController) {
        presentedController = controller

        panRecognizer = UIPanGestureRecognizer(target: self, action: #selector(handle(recognizer:)))
        presentedController?.view.addGestureRecognizer(panRecognizer!)
    }

    // MARK: - Override
    override var wantsInteractiveStart: Bool {
        get {
            switch direction {
            case .present:
                return false
            case .dismiss:
                let gestureIsActive = panRecognizer?.state == .began
                return gestureIsActive
            }
        }

        set {}
    }

    // MARK: - Direction
    var direction: TransitionDirection = .present

    @objc private func handle(recognizer rec: UIPanGestureRecognizer) {
        switch direction {
        case .present: handlePresentation(recognizer: rec)
        case .dismiss: handleDismiss(recognizer: rec)
        }
    }
}

// MARK: - Gesture Handling
extension TransitionDriver {

    private func handlePresentation(recognizer rec: UIPanGestureRecognizer) {
        switch rec.state {
        case .began:
            pause()
        case .changed:
            let increment = -rec.incrementToBottom(maxTranslation: maxTranslation)
            update(percentComplete + increment)
        case .ended, .cancelled:
            if rec.isProjectedToDownHalf(maxTranslation: maxTranslation) {
                cancel()
            } else {
                finish()
            }
        case .failed:
            cancel()
        default:
            break
        }
    }

    private func handleDismiss(recognizer rec: UIPanGestureRecognizer) {
        switch rec.state {
        case .began:
            pause() // Pause allows to detect isRunning
            if !isRunning {
                presentedController?.dismiss(animated: true) // Start the new one
            }
        case .changed:
            update(percentComplete + rec.incrementToBottom(maxTranslation: maxTranslation))
        case .ended, .cancelled:
            if rec.isProjectedToDownHalf(maxTranslation: maxTranslation) {
                finish()
            } else {
                cancel()
            }

        case .failed:
            cancel()

        default:
            break
        }
    }

    var maxTranslation: CGFloat {
        return presentedController?.view.frame.height ?? 0
    }

    /// `pause()` before call `isRunning`
    private var isRunning: Bool {
        return percentComplete != 0
    }
}

private extension UIPanGestureRecognizer {
    func isProjectedToDownHalf(maxTranslation: CGFloat) -> Bool {
        let endLocation = projectedLocation(decelerationRate: .fast)
        let isPresentationCompleted = endLocation.y > maxTranslation / 2

        return isPresentationCompleted
    }

    func incrementToBottom(maxTranslation: CGFloat) -> CGFloat {
        let translation = self.translation(in: view).y
        setTranslation(.zero, in: nil)

        let percentIncrement = translation / maxTranslation
        return percentIncrement
    }
}
