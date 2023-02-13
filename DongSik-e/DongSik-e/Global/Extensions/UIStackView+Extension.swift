//
//  UIStackView+Extension.swift
//  DongSik-e
//
//  Created by LeeJiSoo on 2023/02/13.
//

import UIKit

extension UIStackView {
    func addArrangedSubviews(_ views: UIView...) {
        for view in views {
            addArrangedSubview(view)
        }
    }
}
