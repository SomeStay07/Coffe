//
//  ScrollingCollectionViewFlowLayout.swift
//  Coffe Pushkin
//
//  Created by Тимур on 31.05.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import UIKit

class ScrollingCollectionViewFlowLayout: UICollectionViewFlowLayout {

    override public func targetContentOffset(forProposedContentOffset proposedContentOffset: CGPoint, withScrollingVelocity velocity: CGPoint) -> CGPoint {

        guard let collectionView = collectionView else {
            return super.targetContentOffset(forProposedContentOffset: proposedContentOffset, withScrollingVelocity: velocity)
        }

        let willtoNextX: CGFloat

        if proposedContentOffset.x <= 0 || collectionView.contentOffset == proposedContentOffset {
            willtoNextX = proposedContentOffset.x
        } else {
            let width = collectionView.bounds.size.width
            willtoNextX = collectionView.contentOffset.x + (velocity.x > 0 ?  width : -width)
        }

        let targetRect = CGRect(x: willtoNextX, y: 0, width: collectionView.bounds.size.width, height: collectionView.bounds.size.height)

        var offsetAdjustCoefficient = CGFloat.greatestFiniteMagnitude

        let horizontalOffset = proposedContentOffset.x + collectionView.contentInset.left

        let layoutAttributesArray = super.layoutAttributesForElements(in: targetRect)

        layoutAttributesArray?.forEach({ (layoutAttributes) in
            let itemOffset = layoutAttributes.frame.origin.x
            if fabsf(Float(itemOffset - horizontalOffset)) < fabsf(Float(offsetAdjustCoefficient)) {
                offsetAdjustCoefficient = itemOffset - horizontalOffset
            }
        })

        return CGPoint(x: proposedContentOffset.x + offsetAdjustCoefficient, y: proposedContentOffset.y)
    }
}
