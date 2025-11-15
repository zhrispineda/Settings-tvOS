//
//  SetupSection.swift
//  TVSettings
//
//  Settings > System
//

import SwiftUI

struct SetupSection: SettingsSectionBuilder {
    func build() -> TSKViewWrapper.SettingItemData {
        TSKItem("SystemTitle") {
            TSKSection("SetupInfoSectionTitle") {
                TSKItem("TroubleshootingTitle") {}
                TSKItem("WhatsNewTitle") {}
            }
            
            TSKSection("SetupMaintenanceSectionTitle") {
                TSKItem("SoftwareUpdateTitle") {}
                TSKItem("ResetTitle") {}
                TSKActionItem("RestartTitle") {}
            }
        }
    }
}
