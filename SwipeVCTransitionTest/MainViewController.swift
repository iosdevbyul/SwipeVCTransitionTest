//
//  ViewController.swift
//  SwipeVCTransitionTest
//
//  Created by COMATOKI on 2024-10-16.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
        setupSwipeGestures()
    }
    
    private func setupViewControllers() {
        let firstVC = FirstViewController()
        let secondVC = SecondViewController()
        let thirdVC = ThirdViewController()

        firstVC.tabBarItem = UITabBarItem(title: "First", image: nil, selectedImage: nil)
        secondVC.tabBarItem = UITabBarItem(title: "Second", image: nil, selectedImage: nil)
        thirdVC.tabBarItem = UITabBarItem(title: "Third", image: nil, selectedImage: nil)

        viewControllers = [firstVC, secondVC, thirdVC]
    }

    private func setupSwipeGestures() {
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(_:)))
        swipeLeft.direction = .left
        view.addGestureRecognizer(swipeLeft)

        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(_:)))
        swipeRight.direction = .right
        view.addGestureRecognizer(swipeRight)
    }

    @objc private func handleSwipe(_ gesture: UISwipeGestureRecognizer) {
        guard let currentIndex = viewControllers?.firstIndex(of: selectedViewController!) else { return }

        if gesture.direction == .left {
            let nextIndex = currentIndex + 1
            if nextIndex < viewControllers!.count {
                selectedIndex = nextIndex
            }
        } else if gesture.direction == .right {
            let previousIndex = currentIndex - 1
            if previousIndex >= 0 {
                selectedIndex = previousIndex
            }
        }
    }
}
