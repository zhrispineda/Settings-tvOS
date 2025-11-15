//
//  ContentView.swift
//  TVSettings
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) private var colorScheme
    
    var body: some View {
        TSKViewWrapper("SettingsTitle") {
            TSKGroup {
                GeneralSection(colorScheme: colorScheme)
                
                UserProfilesSection()
                
                AudioViewSection()
                
                AmbientSection()
                
                AirPlaySection()
                
                BluetoothSection()
                
                AccessibilitySection()
                
                AppsSection()
                
                NetworkSection()
                
                SetupSection()
                
                DTSection()
                
                TSKActionItem("SleepTitle") {}
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
