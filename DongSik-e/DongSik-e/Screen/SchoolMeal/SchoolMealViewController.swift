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
        label.text = StringLiteral.schoolMealDescriptionTitle
        label.setDynamicFont(for: .body)
        return label
    }()
    private lazy var categoryCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 5
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(cell: CategoryCollectionViewCell.self)
        return collectionView
    }()

    // MARK: - life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupLayout()
    }

    // MARK: - func

    private func setupNavigationBar() {
        navigationItem.title = StringLiteral.appTitle
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

// MARK: - UICollectionViewDataSource
extension SchoolMealViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return schoolMealList.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.className, for: indexPath) as? CategoryCollectionViewCell else { return UICollectionViewCell() }
        cell.setData(with: schoolMealList[indexPath.item])
        cell.contentView.isUserInteractionEnabled = false
        return cell
    }
}

// MARK: - UICollectionViewDelegateFlowLayout
extension SchoolMealViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // TODO: - cell 크기 조절해서 넣어주어야함 (라벨 크기에 맞춰서 계산 필요)
        return CGSize(width: 81, height: 26)
    }
}
