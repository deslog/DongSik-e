//
//  SchoolMealViewController.swift
//  DongSik-e
//
//  Created by LeeJiSoo on 2023/01/27.
//

import UIKit

class SchoolMealViewController: UIViewController {

    // TODO: - 임시데이터, 추후 삭제 될 예정입니다.
    let schoolMealList = ["즐겨찾기", "전체", "상록원", "그루터기", "남산학사", "가든쿡"]

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
        view.addSubviews(descriptionLabel, categoryCollectionView)
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),

            categoryCollectionView.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 16),
            categoryCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            categoryCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            categoryCollectionView.heightAnchor.constraint(equalToConstant: CalculateSizeManager().calculateCategoryButton(.heightAnchor, with: nil) + 20)
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
        cell.configureUI(with: schoolMealList[indexPath.item])
        cell.contentView.isUserInteractionEnabled = false
        return cell
    }
}

// MARK: - UICollectionViewDelegateFlowLayout
extension SchoolMealViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = CalculateSizeManager().calculateCategoryButton(.widthAnchor, with: schoolMealList[indexPath.item])
        let height = CalculateSizeManager().calculateCategoryButton(.heightAnchor, with: schoolMealList[indexPath.item])
        return CGSize(width: width, height: height)
    }
}
