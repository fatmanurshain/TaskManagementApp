//
//  ContentView.swift
//  TaskManagementApp
//
//  Created by Fatmanur Şahin on 22.09.2024.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        Home()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.BG)
            .preferredColorScheme(.light)
    }
}

#Preview {
    ContentView()
}
