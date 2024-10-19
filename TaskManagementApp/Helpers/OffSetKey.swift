//
//  OffSetKey.swift
//  TaskManagementApp
//
//  Created by Fatmanur Şahin on 16.10.2024.
//

import SwiftUI

struct OffSetKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
