//
//  MovingFormControlsApp.swift
//  MovingFormControls
//
//  Created by Developer on 8/21/25.
//

import SwiftUI

@main
struct MovingFormControlsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .fixedSize(horizontal: false, vertical: true)
                .frame(width: 450)
        }
        .windowResizability(.contentSize)

        Settings {
            SettingsView()
        }
    }
}
