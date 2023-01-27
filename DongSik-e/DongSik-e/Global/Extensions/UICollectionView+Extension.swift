//
//  UICollectionView+Extension.swift
//  DongSik-e
//
//  Created by LeeJiSoo on 2023/01/27.
//

import UIKit

extension UICollectionView {
    func register<T: UICollectionViewCell>(cell: T.Type,
                                           forCellWithReuseIdentifier reuseIdentifier: String = T.className) {
        register(cell, forCellWithReuseIdentifier: reuseIdentifier)
    }
}
