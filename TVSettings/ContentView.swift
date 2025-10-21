//
//  ContentView.swift
//  TVSettings
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        SettingsView(title: "Settings") {
            NavigationLink("GeneralTitle") {}
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
