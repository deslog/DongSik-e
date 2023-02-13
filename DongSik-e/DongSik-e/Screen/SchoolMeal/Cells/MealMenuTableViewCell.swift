//
//  MealMenuTableViewCell.swift
//  DongSik-e
//
//  Created by LeeJiSoo on 2023/02/01.
//

import UIKit

class MealMenuTableViewCell: UITableViewCell {

    // MARK: - property
    private let menuStack: UIStackView = {
        let stackview = UIStackView()
        stackview.translatesAutoresizingMaskIntoConstraints = false
        stackview.axis = .horizontal
        stackview.alignment = .center
        stackview.distribution = .equalSpacing
        stackview.spacing = 8
        return stackview
    }()
    private let menuName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        // TODO: - 임시로 넣어둔 값
        label.text = "김치제육덮밥"
        label.setDynamicFont(.body)
        label.textColor = .black
        return label
    }()
    private let dotLine: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        // TODO: - 임시로 넣어둔 값
        label.text = "········································"
        label.setDynamicFont(.body)
        label.textColor = .orange
        return label
    }()
    private let priceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        // TODO: - 임시로 넣어둔 값
        label.text = "₩5,000"
        label.setDynamicFont(.body)
        label.textColor = .black
        return label
    }()

    // MARK: - init

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

    }

    @available(*, unavailable)
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - func

    private func setupLayout() {
        menuName.setContentCompressionResistancePriority(.required, for: .horizontal)
        priceLabel.setContentCompressionResistancePriority(.required, for: .horizontal)

        menuStack.addArrangedSubviews(menuName, dotLine, priceLabel)
        contentView.addSubviews(menuStack)
        NSLayoutConstraint.activate([
            menuStack.topAnchor.constraint(equalTo: contentView.topAnchor),
            menuStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            menuStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            menuStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
}
