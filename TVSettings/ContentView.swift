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
                
                TSKActionItem("SleepTitle") {
                    sleepNow()
                }
            }
        }
        .ignoresSafeArea()
    }
    
    /// This will send a sleep signal to Apple TV through PineBoard/PineBoardServices.
    /// But because this application is missing required entitlements, the sleep request will fail.
    ///
    /// Missing entitlements might include:
    ///
    /// `com.apple.appletv.pbs.allow-sleep`
    private func sleepNow() {
        guard
            let cls = NSClassFromString("PBSSystemService") as? NSObject.Type,
            let shared = cls.perform(NSSelectorFromString("sharedInstance"))?.takeUnretainedValue() as? NSObject
        else { return }

        shared.perform(NSSelectorFromString("sleepSystemForReason:"), with: "UserSettings")
        print("Triggered system sleep.")
    }
}

#Preview {
    ContentView()
}
