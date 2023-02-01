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
        label.textColor = .black
        label.backgroundColor = .white
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
        let cellWidth = CalculateSizeManager().calculateCategoryButton(.widthAnchor, with: category)
        let cellHeight = CalculateSizeManager().calculateCategoryButton(.heightAnchor, with: category)

        categoryLabel.text = category
        categoryLabel.constraint(.widthAnchor, constant: cellWidth)
        categoryLabel.constraint(.heightAnchor, constant: cellHeight)
    }

    func configureUI(with label: String) {
        let cellWidth = CalculateSizeManager().calculateCategoryButton(.widthAnchor, with: label)
        let cellHeight = CalculateSizeManager().calculateCategoryButton(.heightAnchor, with: label)

        contentView.layer.cornerRadius = min(cellWidth, cellHeight) / 2
        contentView.layer.masksToBounds = true
        contentView.layer.borderWidth = 0.01
        // TODO: - color set이 지정되면, 변경해야합니다.
        contentView.layer.borderColor = UIColor.gray.cgColor

        layer.makeShadow(color: .black,
                         opacity: 0.08,
                         offset: CGSize(width: -2, height: -2),
                         radius: 4,
                         buttonTitle: label,
                         buttonHeight: cellHeight)
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
