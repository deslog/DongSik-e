//
//  CategoryCollectionViewCell.swift
//  DongSik-e
//
//  Created by LeeJiSoo on 2023/01/27.
//

import UIKit

final class CategoryCollectionViewCell: UICollectionViewCell {

    // MARK: - property

    private let categoryLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.setDynamicFont(.subheadline)
        // TODO: - color set이 지정되면, 변경해야합니다.
        label.textColor = .white
        label.clipsToBounds = true
        // TODO: - corner radius 계산해서 넣어주어야함
        label.layer.cornerRadius = 10
        label.backgroundColor = .black
        return label
    }()

    // MARK: - init

    override init(frame: CGRect) {
        super .init(frame: frame)
        self.setupLayout()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - func

    func setData(with category: String) {
        categoryLabel.text = category
    }

    private func setupLayout() {
        contentView.addSubviews(categoryLabel)
        NSLayoutConstraint.activate([
            categoryLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            categoryLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            categoryLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            categoryLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
}
