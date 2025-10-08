//
//  ContentView.swift
//  MovingFormControls
//
//  Created by Developer on 8/21/25.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.openSettings) var openSettings

    var body: some View {
        VStack {
            Image(systemName: "exclamationmark.triangle")
                .resizable()
                .foregroundStyle(.tint)
                .frame(width: 48, height: 48)
                .padding()

            Text("Make sure “Show scroll bars” is set to “Always” in the “Appearance” section of System Settings, then open the Settings window by clicking the button below.\n\nExpected results: the .fixedSize() Form is not scrollable at all and the toggle controls in the form do not move when the pointer hovers over them.\n\nActual results: the .fixedSize() Form can scroll a pixel or two, and when you hover over the toggle controls, they MOVE and cause the content (and then the window) to resize!")

            Button("Open Settings") {
                openSettings()
            }
            .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
