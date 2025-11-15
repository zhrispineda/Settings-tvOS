//
//  NetworkSection.swift
//  TVSettings
//
//  Settings > Network
//

import SwiftUI

struct NetworkSection: SettingsSectionBuilder {
    func build() -> TSKViewWrapper.SettingItemData {
        TSKItem("NetworkTitle") {
            TSKSection("NetworkConnectionTitle") {
                TSKActionItem(
                    "NetworkEthernetItem",
                    status: "NetworkEthernetActiveTitle",
                    previewDescription: "NetworkEthernetActiveItemDescription"
                ) {}
                //TSKItem("NetworkTroubleshootingItem", previewDescription: "NetworkTroubleshootingItemDescription") {}
            }
            
            TSKSection("VPNSectionTitle") {
                TSKItem(
                    "com.apple.preferences.application-firewall",
                    status: "VPNInactiveValue",
                    previewDescription: "VPNSectionDescription"
                ) {
                    TSKSection {}
                }
            }
            
            TSKSection("NetworkStatusTitle") {}
        }
    }
}
