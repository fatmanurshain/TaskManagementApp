//
//  Views+Extensions.swift
//  TaskManagementApp
//
//  Created by Fatmanur Şahin on 22.09.2024.
//

import SwiftUI

/// Custom view extensions

public extension View {
    ///Custom speacers
    @ViewBuilder
    func hSpacing (_ alignment: Alignment) -> some View{
        self
            .frame(maxWidth: .infinity, alignment: alignment)
    }
    
    func vSpacing (_ alignment: Alignment) -> some View{
        self
            .frame(maxHeight: .infinity, alignment: alignment)
    }
    
    ///İki tarihin aynı olup olmadığını kontrol etme
    func isSameDate(_ date1: Date, _ date2: Date) -> Bool {
        return Calendar.current.isDate(date1, inSameDayAs: date2)
    }
}
