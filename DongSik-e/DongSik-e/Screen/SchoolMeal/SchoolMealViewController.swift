//
//  SchoolMealViewController.swift
//  DongSik-e
//
//  Created by LeeJiSoo on 2023/01/27.
//

import UIKit

class SchoolMealViewController: UIViewController {

    // MARK: - property



    // MARK: - life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
    }

    // MARK: - func

    private func setupNavigationBar() {
        navigationItem.title = "🍚 동식이"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .never
    }
}
