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
                
                TSKItem("AirPlayTitle") {
                    TSKSection {
                        TSKItem("APEnabledTitle", previewDescription: "APDescriptionText") {}
                        TSKItem("APAccessControlTitle") {}
                        TSKItem("APCRDTitle", previewDescription: "APCRDModeDescriptionText") {}
                        TSKItem("AVAdjustForOverscanTitle", previewDescription: "AVAdjustForOverscanDescription") {}
                        TSKItem("AirPlayPeerToPeerTitle", previewDescription: "AirPlayPeerToPeerDescription") {}
                    }
                    
                    TSKSection("HomeKitSectionTitle") {
                        TSKItem("WHARoomTitle", previewDescription: "WHASynchronizingDescription") {}
                    }
                }
                
                TSKItem("RemotesTitle") {
                    TSKSection("BluetoothOtherDevicesSectionTitle") {
                        TSKItem("BluetoothItemTitle") {}
                        TSKItem("RCPairRemoteTitle", previewDescription: "RCPairRemoteInstructionalText") {}
                        TSKItem("RCSystemPairingsTitle", previewDescription: "RCSystemPairingsInstructionalText") {}
                        TSKItem("RCLearnRemoteTitle", previewDescription: "RCLearnRemoteInstructionalText") {}
                    }
                    
                    TSKSection("RCSystemControlGroupTitle") {
                        TSKItem("RCIRPowerTitle", previewDescription: "RCIRPowerInstructionalTextNoRemote") {}
                        TSKItem("RCVCTitle", previewDescription: "RCVCInstructionalTextNoRemote") {}
                    }
                }
                
                TSKItem("AccessibilityTitle") {
                    TSKSection("AXVisionSectionTitle") {
                        TSKItem("AXHoverTextTitle", previewDescription: "AXHoverTextDescription") {}
                        TSKItem("AXDisplayAndTextSizeTitle") {}
                        TSKItem("AXMotionTitle") {}
                        TSKItem("AXAudioDescriptionsTitle", previewDescription: "AXAudioDescriptionsDescription") {}
                    }
                    
                    TSKSection("HearingSectionTitle") {
                        TSKItem("AXMonoAudioItemTitle") {}
                        TSKItem("AXAudioBalanceItemTitle") {}
                        TSKItem("AXSubtitlesAndCaptiontingTitle") {}
                        TSKItem("AXExtendedVoiceIsolationModesTitle", previewDescription: "AXExtendedVoiceIsolationModesDetails") {}
                    }
                    
                    TSKSection("AXGeneralSectionTitle") {
                        TSKItem("AXAccessibilityMenuTitle", previewDescription: "AXAccessibilityMenuDescription") {}
                    }
                }
                
                TSKItem("AppsTitle") {
                    TSKSection {
                        TSKItem("AutoUpdateAppsTitle") {}
                        TSKItem("AppsAutoDownloadBackgroundAssetsTitle", previewDescription: "AppsAutoDownloadBackgroundAssetsDescription") {}
                        TSKItem("AppsAutoOffloadTitle", previewDescription: "AppsAutoOffloadDescription") {}
                    }
                }
                
                TSKItem("NetworkTitle") {
                    TSKSection("NetworkConnectionTitle") {
                        TSKItem("NetworkEthernetItem", previewDescription: "NetworkEthernetActiveItemDescription") {}
                        TSKItem("NetworkTroubleshootingItem", previewDescription: "NetworkTroubleshootingItemDescription") {}
                    }
                    
                    TSKSection("VPNSectionTitle") {
                        TSKItem("com.apple.preferences.application-firewall", previewDescription: "VPNSectionDescription") {}
                    }
                    
                    TSKSection("NetworkStatusTitle") {}
                }
                
                TSKItem("SystemTitle") {
                    TSKSection("SetupInfoSectionTitle") {
                        TSKItem("TroubleshootingTitle") {}
                        TSKItem("WhatsNewTitle") {}
                    }
                    
                    TSKSection("SetupMaintenanceSectionTitle") {
                        TSKItem("SoftwareUpdateTitle") {}
                        TSKItem("ResetTitle") {}
                        TSKItem("RestartTitle") {}
                    }
                }
                
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
