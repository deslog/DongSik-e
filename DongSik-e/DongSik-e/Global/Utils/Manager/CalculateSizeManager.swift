//
//  CalculateSizeManager.swift
//  DongSik-e
//
//  Created by LeeJiSoo on 2023/01/30.
//

import UIKit

struct CalculateSizeManager {
    func calculateCategoryButton(_ anchor: Frame, with buttonTitle: String?) -> CGFloat {
        let label = UILabel()
        label.text = buttonTitle ?? "temp"
        label.sizeToFit()
        switch anchor {
        case .widthAnchor:
            return label.frame.width + 24
        case .heightAnchor:
            return label.frame.height + 8
        }
    }
}
