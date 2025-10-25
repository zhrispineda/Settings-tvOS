//
//  ContentView.swift
//  TVSettings
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TSKViewWrapper("Settings") {
            TSKGroup {
                TSKItem("General") {
                    TSKSection {
                        TSKItem("About") {}
                        TSKItem("Appearance") {}
                        TSKItem("Sleep After") {}
                        TSKItem("Restrictions") {}
                        TSKItem("Privacy & Security") {}
                        TSKItem("Legal & Regulatory") {}
                    }
                    
                    TSKSection("Language & Region") {
                        TSKItem("Apple TV Languages") {}
                        TSKItem("Keyboard Layout") {}
                        TSKItem("Dictation") {}
                        TSKItem("Region") {}
                    }
                    
                    TSKSection("Siri") {
                        TSKItem("Siri") {}
                        TSKItem("Siri Language") {}
                        TSKItem("Siri & Dictation History") {}
                        TSKItem("Always Show Speech") {}
                        TSKItem("On-Screen Actions") {}
                        TSKItem("Use with Ask Siri") {}
                        TSKItem("About Siri, Dictation & Privacy") {}
                    }
                    
                    TSKSection("Date & Time") {
                        TSKItem("Set Automatically") {}
                        TSKItem("Time Zone") {}
                        TSKItem("Time Format") {}
                    }
                    
                    TSKSection("VPN & Device Management") {
                        TSKItem("com.apple.preferences.application-firewall") {}
                        TSKItem("About VPNs & Privacy") {}
                    }
                }
                TSKItem("Profiles and Accounts") {}
                TSKItem("Video and Audio") {}
                TSKItem("Screen Saver") {}
                TSKItem("AirPlay and Apple Home") {}
                TSKItem("Remotes and Devices") {}
                TSKItem("Accessibility") {}
                TSKItem("Apps") {}
                TSKItem("Network") {}
                TSKItem("System") {}
                TSKItem("Developer") {}
                TSKItem("Power Off") {}
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
