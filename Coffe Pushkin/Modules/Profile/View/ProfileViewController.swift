//
//  ProfileViewController.swift
//  Coffe Pushkin
//
//  Created by Тимур on 25.05.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import Foundation
import SnapKit
import UIKit
import AudioToolbox.AudioServices

final class ProfileViewController: UIViewController, ProfileViewProtocol {

    var output: ProfileViewOutput?

    private var viewModels = [CouponCollectionCell.ViewModel]()

    private let baseRectangleWidth: CGFloat = 264
    private let baseLayoutCellWidth: CGFloat = 375

    private var screenSize: CGSize {
        return UIScreen.main.bounds.size
    }

    private let collectionView = UICollectionView(
        frame: .zero,
        collectionViewLayout: ScrollingCollectionViewFlowLayout()
    )

    private let tactileVibrations = SystemSoundID(1520)

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = Colors.shared.systemBackground

        embedViews()
        setupLayout()
        setupBehaviour()
        setupAppearance()
        output?.viewLoaded()
    }

    override func viewDidLayoutSubviews() {
        //setup collection view layout
    }

    private func embedViews() {
        view.addSubview(collectionView)
    }

    private func setupLayout() {
        collectionView.snp.makeConstraints { (make) in
            make.top.equalTo(view.snp.top)
            make.leading.equalTo(view.snp.leading)
            make.trailing.equalTo(view.snp.trailing)
            make.bottom.equalTo(view.snp.bottom)
        }
    }

    private func setupBehaviour() {
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.isPagingEnabled = false
        collectionView.decelerationRate = .fast

        collectionView.register(
            CouponCollectionCell.self,
            forCellWithReuseIdentifier: .cellIdentifier
        )
    }

    // MARK: - Appearance
    private func setupAppearance() {
        let ratioWidth: CGFloat = screenSize.width / baseLayoutCellWidth
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = Colors.shared.systemBackground
        collectionView.contentInset = UIEdgeInsets(
            top: 0.0,
            left: 55.0 * ratioWidth,
            bottom: 0.0,
            right: 55.0 * ratioWidth
        )
        (collectionView.collectionViewLayout as? UICollectionViewFlowLayout).flatMap {
            $0.minimumLineSpacing = 16
            $0.scrollDirection = .horizontal
        }
    }
}

extension ProfileViewController: ProfileViewInput {

    func set(state: ProfileViewState) {
        switch state {
        case .hasData(let viewModels):
            handleHasDataState(viewModels)
        case .noData: print("No data")
        case .error: print("Error")
        case .loading: print("Loading")
        }
    }

    private func handleHasDataState(_ viewModels: [CouponCollectionCell.ViewModel]) {
        self.viewModels = viewModels
        collectionView.reloadData()
    }
}

// MARK: - CollectionView DataSource
extension ProfileViewController: UICollectionViewDataSource {
    public func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int
    ) -> Int {
        return viewModels.count
    }

    public func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {

        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: .cellIdentifier,
            for: indexPath
            ) as? CouponCollectionCell else {
                return UICollectionViewCell()
            }
        cell.apply(viewModel: viewModels[indexPath.item])
        return cell
    }
}

// MARK: - CollectionView Delegate
extension ProfileViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(
        _ collectionView: UICollectionView,
        didSelectItemAt indexPath: IndexPath
    ) {
        viewModels[indexPath.row].onClick()
    }

    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath
    ) -> CGSize {
        let ratioWidth: CGFloat = screenSize.width / baseLayoutCellWidth
        let resultWidth = baseRectangleWidth * ratioWidth
        let resultHeight = resultWidth / 33 * 59
        return .init(width: resultWidth, height: resultHeight)
    }

    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        AudioServicesPlaySystemSound(tactileVibrations)
    }
}

private extension String {
    static let cellIdentifier = "couponCell"
}
