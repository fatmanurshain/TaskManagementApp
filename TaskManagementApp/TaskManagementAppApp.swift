//
//  TaskManagementAppApp.swift
//  TaskManagementApp
//
//  Created by Fatmanur Şahin on 22.09.2024.
//

import SwiftUI

@main
struct TaskManagementAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
