//
//  ImageLiteral.swift
//  DongSik-e
//
//  Created by LeeJiSoo on 2023/01/24.
//

import UIKit

enum ImageLiteral {

    // MARK: - Tabbar

    static var schoolMealTab: UIImage{ .load(systemName: "building.columns") }
    static var dongSikDangTab: UIImage{ .load(systemName: "fork.knife") }
    static var reportTab: UIImage{ .load(systemName: "pencil") }
    static var myTab: UIImage{ .load(systemName: "person") }
}

extension UIImage {
    static func load(name: String) -> UIImage {
        guard let image = UIImage(named: name, in: nil, compatibleWith: nil) else {
            return UIImage()
        }
        image.accessibilityIdentifier = name
        return image
    }

    static func load(systemName: String) -> UIImage {
        guard let image = UIImage(systemName: systemName, compatibleWith: nil) else {
            return UIImage()
        }
        image.accessibilityIdentifier = systemName
        return image
    }

    func resize(to size: CGSize) -> UIImage {
        let image = UIGraphicsImageRenderer(size: size).image { _ in
            draw(in: CGRect(origin: .zero, size: size))
        }
        return image
    }
}
