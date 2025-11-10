//
//  AirPlaySection.swift
//  TVSettings
//
//  Settings > AirPlay and Apple Home
//

import SwiftUI

struct AirPlaySection: SettingsSectionBuilder {
    func build() -> TSKViewWrapper.SettingItemData {
        TSKItem("AirPlayTitle") {
            TSKSection {
                TSKActionItem(
                    "APEnabledTitle",
                    status: "SettingsON",
                    previewDescription: "APDescriptionText"
                ) {}
                
                TSKItem("APAccessControlTitle", status: "APAccessTypeAny") {
                    TSKSection {}
                }
                
                TSKItem("APCRDTitle", status: "SettingsOFF", previewDescription: "APCRDModeDescriptionText") {
                    TSKSection {}
                }
                
                TSKItem(
                    "AVAdjustForOverscanTitle",
                    status: "APOverscanAutoValue",
                    previewDescription: "AVAdjustForOverscanDescription"
                ) {
                    TSKSection {}
                }
                
                TSKActionItem(
                    "AirPlayPeerToPeerTitle",
                    status: "SettingsON",
                    previewDescription: "AirPlayPeerToPeerDescription"
                ) {}
            }
            
            TSKSection("HomeKitSectionTitle") {
                TSKActionItem(
                    "WHARoomTitle",
                    status: "WHARoomSelectTitle",
                    previewDescription: "WHASynchronizingDescription",
                    accessoryType: .progress
                ) {}
            }
        }
    }
}
