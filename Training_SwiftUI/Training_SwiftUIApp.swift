//
//  Training_SwiftUIApp.swift
//  Training_SwiftUI
//
//  Created by Đạt Nguyễn on 26/11/24.
//

import SwiftUI
import SwiftData

@main
struct Training_SwiftUIApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            Challenge2()
        }
        .modelContainer(sharedModelContainer)
    }
}
