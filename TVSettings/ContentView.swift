//
//  ContentView.swift
//  TVSettings
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TSKViewWrapper("SettingsTitle") {
            TSKGroup {
                TSKItem("GeneralTitle") {
                    TSKSection {
                        TSKItem("AboutTitle") {}
                        TSKItem("GeneralAppearanceSectionTitle", previewDescription: "UserInterfaceStyleDescription") {}
                        TSKItem("SleepTimeTitle", previewDescription: "SleepTimeDescription") {}
                        TSKItem("RestrictionsTitle") {}
                        TSKItem("PrivacyTitle") {}
                        TSKItem("LegalAndRegulatoryTitle") {}
                    }
                    
                    TSKSection("Language & Region") {
                        TSKItem("Apple TV Languages", previewImageName: "globe") {}
                        TSKItem("Keyboard Layout", previewDescription: "KeyboardTypeDescription") {}
                        TSKItem("Dictation", previewDescription: "DictationDescription") {}
                        TSKItem("RegionFormatTitle") {}
                    }
                    
                    TSKSection("GeneralSiriSectionTitle") {
                        TSKItem("SiriEnableTitle", previewDescription: "SiriDescription") {}
                        TSKItem("SiriLanguageTitle", previewDescription: "SiriDescription") {}
                        TSKItem("SiriHistoryTitle", previewDescription: "SiriHistoryDescriptionNotOptedIn") {}
                        TSKItem("SiriAlwaysShowSpeechTitle", previewDescription: "SiriAlwaysShowSpeechDescription") {}
                        TSKItem("SiriOSAItemTitle", previewDescription: "SiriOSAItemDescription") {}
                        TSKItem("SiriTCCItemTitle", previewDescription: "SiriTCCItemDescription") {}
                        TSKItem("BUTTON_TITLE") {}
                    }
                    
                    TSKSection("GeneralDateAndTimeSectionTitle") {
                        TSKItem("TimeZoneSetAutomaticallyTitle") {}
                        TSKItem("TimeZoneTitle") {}
                        TSKItem("TimeZoneSet24HourTitle", previewDescription: "SiriDescription") {}
                    }
                    
                    TSKSection("GeneralManagementSectionTitle") {
                        TSKItem("com.apple.preferences.application-firewall") {}
                        TSKItem("BUTTON_TITLE") {}
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
