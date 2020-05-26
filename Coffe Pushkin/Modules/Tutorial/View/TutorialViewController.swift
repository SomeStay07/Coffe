//
//  TutorialViewController.swift
//  Coffe Pushkin
//
//  Created by Тимур on 23.05.2020.
//  Copyright © 2020 Тимур Чеберда. All rights reserved.
//

import UIKit
import SnapKit

final class TutorialViewController: UIPageViewController, TutorialViewProtocol {
    
    var output: TutorialViewOutput?
    
    private(set) lazy var arrayOfPages: [CommonPageViewController] = []
        
    private let continueButton = PrimaryButtonLabel()
    
    private var onContinueButtonTap: (() -> ())?
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        output?.viewDidLoad()
        embedViews()
        setupLayout()
        setupAppearance()
        setupBehaviour()
    }
    
    //MARK: - init UIPageVC
    override init(
        transitionStyle style: UIPageViewController.TransitionStyle,
        navigationOrientation: UIPageViewController.NavigationOrientation,
        options: [UIPageViewController.OptionsKey : Any]? = nil) {
        
        super.init(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)

        dataSource = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func onContinueTap() {
            let viewController = ProfileViewController()
            ProfileAssembly.assembly(with: viewController)
            self.present(viewController, animated: true, completion: nil)
    }
}

extension TutorialViewController: TutorialViewInput {
    
    func set(viewModels: [CommonPageViewController.ViewModel]) {
        viewModels.forEach {
            arrayOfPages.append(CommonPageViewController(with: $0))
        }
    }
}

// MARK: Setup

private extension TutorialViewController {
    
    func embedViews() {
        view.addSubview(continueButton)
    }
    
    func setupLayout() {
        continueButton.snp.makeConstraints { (make) in
            make.centerX.equalTo(view.snp.centerX)
            make.bottom.equalTo(view.snp.bottom).offset(-38)
            make.height.equalTo(48)
            make.width.equalTo(284)
        }
    }
    
    func setupBehaviour() {
            
        if let firstViewController = arrayOfPages.first {
            setViewControllers(
                [firstViewController],
                direction: .forward,
                animated: true,
                completion: nil
            )
        }

        continueButton.addTarget(
            self,
            action: #selector(onContinueTap),
            for: .touchUpInside
        )
    }
    
    func setupAppearance() {
        continueButton.setTitle("Продолжить", for: .normal)
        view.backgroundColor = BasiColors.darkViolet.color
        
        let pageControl = UIPageControl.appearance()
        pageControl.pageIndicatorTintColor = .darkGray
        pageControl.currentPageIndicatorTintColor = .white
    }
}

// MARK: UIPageViewControllerDataSource

extension TutorialViewController: UIPageViewControllerDataSource {

    func pageViewController(
        _ pageViewController: UIPageViewController,
        viewControllerBefore viewController: UIViewController
    ) -> UIViewController? {

        guard let viewController = viewController as? CommonPageViewController else { return nil }
        
        if let index = arrayOfPages.firstIndex(of: viewController) {
            
            if index > 0 {
                return arrayOfPages[index - 1]
            }
        }

        return nil
    }

    func pageViewController(
        _ pageViewController: UIPageViewController,
        viewControllerAfter viewController: UIViewController
    ) -> UIViewController? {

        guard let viewController = viewController as? CommonPageViewController else { return nil }
    
        if let index = arrayOfPages.firstIndex(of: viewController) {
            
            if index < arrayOfPages.count - 1 {
                return arrayOfPages[index + 1]
            }
        }
        
        return nil
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return arrayOfPages.count
    }

    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
}
