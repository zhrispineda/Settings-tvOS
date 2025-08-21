//
//  ContentView.swift
//  TVSettings
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) private var colorScheme
    
    var body: some View {
        SettingsView(title: "Settings") {
            NavigationLink("GeneralTitle", destination: GeneralView())
            NavigationLink("ProfilesTitle") {}
            NavigationLink("AudioVideoTitle") {}
            NavigationLink("ScreenSaverTitle") {}
            NavigationLink("AirPlayTitle") {}
            NavigationLink("RemotesTitle") {}
            NavigationLink("AccessibilityTitle") {}
            NavigationLink("AppsTitle") {}
            NavigationLink("NetworkTitle") {}
            NavigationLink("SystemTitle") {}
            NavigationLink("DeveloperTitle") {}
            Button("SleepTitle") {}
        }
    }
}

#Preview {
    ContentView()
}
