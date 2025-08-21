//
//  SettingsView.swift
//  MovingFormControls
//
//  Created by Developer on 8/21/25.
//

import SwiftUI

struct SettingsView : View {
    @State private var selectedTab = 1
    @State private var toggle1 = false
    @State private var toggle2 = true
    @State private var toggle3 = false
    @State private var toggle4 = true
    @State private var toggle5 = false

    var body: some View {
        TabView(selection: .constant(1)) {
            Tab("General", systemImage: "gearshape", value: 1) {
                Form {
                    Section {
                        Toggle(isOn: $toggle1) {
                            Group {
                                Text("Read the text below this line first")

                                Text("The FIRST time this window appears, hover the pointer over each toggle and observe how the toggle controls mobve and the window resizes!")
                                    .font(.subheadline)
                            }
                        }

                        Toggle(isOn: $toggle2) {
                            Group {
                                Text("Read the text below this line second")

                                Text("Also, the vertical scroll bar should not exist. Once you’ve hovered over all the toggle controls, the window MAY have resized enough that the scroll bar will disappear! Madness.")
                                    .font(.subheadline)
                            }
                        }

                    }
                    header: {
                        Text("First Heading")
                    }

                    Section {
                        Toggle(isOn: $toggle3) {
                            Text("Third toggle")
                        }

                        Toggle(isOn: $toggle4) {
                            Text("Fourth toggle")
                        }

                        Toggle(isOn: $toggle5) {
                            Text("Fifth toggle")
                                .padding(.bottom, 3)
                        }
                    }
                    header: {
                        Text("Second Heading")
                    }
                }
                .formStyle(.grouped)
                // This .fixedSize() modifier should make it so the Form
                // does not scroll at all, but it does not always work.
                .fixedSize(horizontal: false, vertical: true)
            }
        }
        .frame(width: 425)
    }
}

#Preview {
    SettingsView()
}
