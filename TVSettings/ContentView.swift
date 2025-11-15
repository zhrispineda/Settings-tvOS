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
                
                TSKItem("DeveloperTitle") {
                    TSKSection("UIAutomationGroupTitle") {
                        TSKItem("UIAutomationEnableTitle") {}
                    }
                    
                    TSKSection("MediaGroupTitle") {
                        TSKItem("EUVolumeTitle") {}
                        TSKItem("PlaybackHUDTitle") {}
                        TSKItem("ResetMediaServicesTitle") {}
                    }
                    
                    TSKSection("VideoSubscriberAccountGroupTitle") {
                        TSKItem("AppsAllowAccessMSOTitle") {}
                    }
                    
                    TSKSection("TVAppGroupTitle") {
                        TSKItem("TV App") {}
                    }
                    
                    TSKSection("GraphicsHUDGroupTitle") {
                        TSKItem("GraphicsHUDTitle", previewDescription: "GraphicsHUDGroupDescription") {}
                        TSKItem("GraphicsLogPerformanceTitle", previewDescription: "GraphicsHUDGroupDescription") {}
                    }
                    
                    TSKSection("GameTestingGroupTitle") {
                        TSKItem("NotifyAboutScoreSubmissionsTitle", previewDescription: "NotifyAboutScoreSubmissionsDescription") {}
                    }
                    
                    TSKSection("BackgroundAssetsGroupTitle") {
                        TSKItem("DevelopmentOverridesTitle", previewDescription: "DevelopmentOverridesDescription") {}
                    }
                }
                
                TSKActionItem("SleepTitle") {}
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
