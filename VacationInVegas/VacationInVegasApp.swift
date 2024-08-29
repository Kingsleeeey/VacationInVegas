//
//  VacationInVegasApp.swift
//  VacationInVegas
//
//  Created by Kingsleeeey on 2024/8/15.
//

import SwiftUI

@main
struct VacationInVegasApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Place.self)
    }
}
