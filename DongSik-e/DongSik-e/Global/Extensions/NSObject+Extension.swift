//
//  NSObject+Extension.swift
//  DongSik-e
//
//  Created by LeeJiSoo on 2023/01/27.
//

import Foundation

extension NSObject {
    static var className: String {
        return String(describing: self)
    }
}
