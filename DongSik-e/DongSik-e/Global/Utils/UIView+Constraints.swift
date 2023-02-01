//
//  UIView+Constraints.swift
//  DongSik-e
//
//  Created by LeeJiSoo on 2023/01/24.
//

import UIKit

enum Frame {
    case widthAnchor, heightAnchor
}

extension UIView {
    @discardableResult
    func constraint(_ anchor: Frame, constant: CGFloat) -> [Frame: NSLayoutConstraint] {
        var constraints: [Frame: NSLayoutConstraint] = [:]

        self.translatesAutoresizingMaskIntoConstraints = false

        switch anchor {
        case .widthAnchor:
            constraints[.widthAnchor] = self.widthAnchor.constraint(equalToConstant: constant)
        case .heightAnchor:
            constraints[.heightAnchor] = self.heightAnchor.constraint(equalToConstant: constant)
        }

        let constraintsArray: [NSLayoutConstraint] = Array(constraints.values)
        NSLayoutConstraint.activate(constraintsArray)
        return constraints
    }
}
