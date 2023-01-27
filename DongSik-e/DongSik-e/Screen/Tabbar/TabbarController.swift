//
//  TabbarController.swift
//  DongSik-e
//
//  Created by LeeJiSoo on 2023/01/27.
//

import UIKit

class TabbarController: UITabBarController {

    // MARK: - property

    private let schoolMealViewController: UINavigationController = {
        // TODO: - 뷰컨트롤러는 임시로 넣어두었습니다.
        let viewController = ViewController()
        let tabBarItem = UITabBarItem(title: "학식", image: UIImage(systemName: "building.columns"), tag: 0)
        viewController.tabBarItem = tabBarItem
        let navigationView = UINavigationController(rootViewController: viewController)
        return navigationView
    }()
    private let dongSikDangViewController: UINavigationController = {
        let viewController = ViewController()
        let tabBarItem = UITabBarItem(title: "동식당", image: UIImage(systemName: "fork.knife"), tag: 1)
        viewController.tabBarItem = tabBarItem
        let navigationView = UINavigationController(rootViewController: viewController)
        return navigationView
    }()
    private let reportViewController: UINavigationController = {
        let viewController = ViewController()
        let tabBarItem = UITabBarItem(title: "제보하기", image: UIImage(systemName: "pencil"), tag: 2)
        viewController.tabBarItem = tabBarItem
        let navigationView = UINavigationController(rootViewController: viewController)
        return navigationView
    }()
    private let myViewController: UINavigationController = {
        let viewController = ViewController()
        let tabBarItem = UITabBarItem(title: "My", image: UIImage(systemName: "person"), tag: 3)
        viewController.tabBarItem = tabBarItem
        let navigationView = UINavigationController(rootViewController: viewController)
        return navigationView
    }()

    // MARK: - life cycle

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - func
}
