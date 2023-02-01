//
//  CALayer+Extension.swift
//  DongSik-e
//
//  Created by LeeJiSoo on 2023/02/01.
//

import UIKit

extension CALayer {
    @discardableResult
    func makeShadow(color: UIColor,
                          opacity: Float,
                          offset: CGSize,
                          radius: CGFloat,
                          buttonTitle: String,
                          buttonHeight: CGFloat) -> Self {
        shadowColor = color.cgColor
        shadowOpacity = opacity
        shadowOffset = offset
        shadowRadius = radius
        let shadowWidth = CalculateSizeManager().calculateCategoryButton(.widthAnchor, with: buttonTitle)
        shadowPath = UIBezierPath(ovalIn: CGRect(origin: .zero, size: CGSize(width: shadowWidth + 4, height: buttonHeight+4))).cgPath
        return self
    }
}
