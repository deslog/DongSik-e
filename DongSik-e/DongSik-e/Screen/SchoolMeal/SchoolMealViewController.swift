//
//  SchoolMealViewController.swift
//  DongSik-e
//
//  Created by LeeJiSoo on 2023/01/27.
//

import UIKit

class SchoolMealViewController: UIViewController {

    // MARK: - property

    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "지금은 중식시간!"
        label.setDynamicFont(for: .body)
        return label
    }()


    // MARK: - life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupLayout()
    }

    // MARK: - func

    private func setupNavigationBar() {
        navigationItem.title = "🍚 동식이"
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    private func setupLayout() {
        view.addSubviews(descriptionLabel)
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            descriptionLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16)
        ])
    }
}
