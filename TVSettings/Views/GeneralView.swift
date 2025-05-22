//
//  GeneralView.swift
//  TVSettings
//
//  Settings > General
//

import SwiftUI

struct GeneralView: View {
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        SettingsView(title: "General") {
            NavigationLink("About") {}
            NavigationLink {} label: {
                HStack {
                    Text("Appearance")
                    Spacer()
                    Text(colorScheme == .light ? "Light" : "Dark")
                        .foregroundStyle(.secondary)
                        .padding(.trailing, -30)
                }
            }
            NavigationLink {} label: {
                HStack {
                    Text("Sleep After")
                    Spacer()
                    Text("15 minutes")
                        .foregroundStyle(.secondary)
                        .padding(.trailing, -30)
                }
            }
            NavigationLink {} label: {
                HStack {
                    Text("Restrictions")
                    Spacer()
                    Text("Off")
                        .foregroundStyle(.secondary)
                        .padding(.trailing, -30)
                }
            }
            NavigationLink("Privacy & Security") {}
            NavigationLink("Legal & Regulatory") {}
            
            Section("Language & Region") {
                NavigationLink {} label: {
                    HStack {
                        Text("Apple TV Languages")
                        Spacer()
                        Text("English")
                            .foregroundStyle(.secondary)
                            .padding(.trailing, -30)
                    }
                }
                NavigationLink {} label: {
                    HStack {
                        Text("Keyboard Layout")
                        Spacer()
                        Text("Auto")
                            .foregroundStyle(.secondary)
                            .padding(.trailing, -30)
                    }
                }
                Button {} label: {
                    LabeledContent("Dictation", value: "Off")
                }
                NavigationLink {} label: {
                    HStack {
                        Text("Region")
                        Spacer()
                        Text("United States")
                            .foregroundStyle(.secondary)
                            .padding(.trailing, -30)
                    }
                }
            }
            
            Section("Siri") {
                Button {} label: {
                    LabeledContent("Siri", value: "Off")
                }
            }
        }
    }
}

#Preview {
    GeneralView()
}
