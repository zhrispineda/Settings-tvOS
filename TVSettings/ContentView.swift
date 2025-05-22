//
//  ContentView.swift
//  TVSettings
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        SettingsView(title: "Settings") {
            NavigationLink("General", destination: GeneralView())
            NavigationLink("Users and Accounts") {}
            NavigationLink("Video and Audio") {}
            NavigationLink("Screen Saver") {}
            NavigationLink("AirPlay and HomeKit") {}
            NavigationLink("Remotes and Devices") {}
            NavigationLink("Accessibility") {}
            NavigationLink("Apps") {}
            NavigationLink("Network") {}
            NavigationLink("System") {}
            NavigationLink("Developer") {}
            Button("Sleep Now") {}
        }
    }
}

#Preview {
    ContentView()
}
