//
//  DTSection.swift
//  TVSettings
//
//  Settings > Developer
//

import SwiftUI

struct DTSection: SettingsSectionBuilder {
    func build() -> TSKViewWrapper.SettingItemData {
        TSKItem("DeveloperTitle") {
            TSKSection("UIAutomationGroupTitle") {
                TSKActionItem(
                    "UIAutomationEnableTitle",
                    status: "SettingsOFF"
                ) {}
            }
            
            TSKSection("MediaGroupTitle") {
                TSKActionItem(
                    "EUVolumeTitle",
                    status: "SettingsOFF"
                ) {}
                
                TSKActionItem(
                    "PlaybackHUDTitle",
                    status: "SettingsOFF"
                ) {}
                
                TSKItem("ResetMediaServicesTitle") {}
            }
            
            TSKSection("VideoSubscriberAccountGroupTitle") {
                TSKItem("AppsAllowAccessMSOTitle") {}
            }
            
            TSKSection("TVAppGroupTitle") {
                TSKItem("TV App") {}
            }
            
            TSKSection("GraphicsHUDGroupTitle") {
                TSKActionItem(
                    "GraphicsHUDTitle",
                    status: "SettingsOFF",
                    previewDescription: "GraphicsHUDGroupDescription"
                ) {}
                
                TSKActionItem(
                    "GraphicsLogPerformanceTitle",
                    status: "SettingsOFF",
                    previewDescription: "GraphicsHUDGroupDescription"
                ) {}
            }
            
            TSKSection("GameTestingGroupTitle") {
                TSKActionItem(
                    "NotifyAboutScoreSubmissionsTitle",
                    status: "SettingsOFF",
                    previewDescription: "NotifyAboutScoreSubmissionsDescription"
                ) {}
            }
            
            TSKSection("BackgroundAssetsGroupTitle") {
                TSKItem(
                    "DevelopmentOverridesTitle",
                    previewDescription: "DevelopmentOverridesDescription"
                ) {}
            }
        }
    }
}
