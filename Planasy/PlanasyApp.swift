//
//  PlanasyApp.swift
//  Planasy
//
//  Created by Nicholas Johnson on 7/31/24.
//

import SwiftUI

@main
struct PlanasyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Planasy.self)
    }
}
