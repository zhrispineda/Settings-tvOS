//
//  AccessibilitySection.swift
//  TVSettings
//
//  Settings > Accessibility
//

import SwiftUI

struct AccessibilitySection: SettingsSectionBuilder {
    func build() -> TSKViewWrapper.SettingItemData {
        TSKItem("AccessibilityTitle") {
            TSKSection("AXVisionSectionTitle") {
                TSKItem(
                    "AXHoverTextTitle",
                    status: "SettingsOFF",
                    previewDescription: "AXHoverTextDescription"
                ) {
                    TSKSection {}
                }
                TSKItem("AXDisplayAndTextSizeTitle") {}
                TSKItem("AXMotionTitle") {}
                TSKActionItem(
                    "AXAudioDescriptionsTitle",
                    status: "SettingsOFF",
                    previewDescription: "AXAudioDescriptionsDescription"
                ) {}
            }
            
            TSKSection("HearingSectionTitle") {
                TSKItem("AXMonoAudioItemTitle", status: "SettingsOFF") {
                    TSKSection {}
                }
                TSKItem("AXAudioBalanceItemTitle", status: "Center") {
                    TSKSection {}
                }
                TSKItem("AXSubtitlesAndCaptiontingTitle") {}
                TSKActionItem(
                    "AXExtendedVoiceIsolationModesTitle",
                    status: "SettingsOFF",
                    previewDescription: "AXExtendedVoiceIsolationModesDetails"
                ) {}
            }
            
            TSKSection("AXGeneralSectionTitle") {
                TSKItem(
                    "AXAccessibilityMenuTitle",
                    status: "SettingsOFF",
                    previewDescription: "AXAccessibilityMenuDescription"
                ) {
                    TSKSection {}
                }
            }
        }
    }
}
