//
//  BluetoothSection.swift
//  TVSettings
//
//  Settings > Remotes and Devices
//

import SwiftUI

struct BluetoothSection: SettingsSectionBuilder {
    func build() -> TSKViewWrapper.SettingItemData {
        TSKItem("RemotesTitle") {
            TSKSection("BluetoothOtherDevicesSectionTitle") {
                TSKItem("BluetoothItemTitle") {}
                TSKActionItem("RCPairRemoteTitle", previewDescription: "RCPairRemoteInstructionalText") {}
                TSKItem("RCSystemPairingsTitle", previewDescription: "RCSystemPairingsInstructionalText") {}
                TSKItem("RCLearnRemoteTitle", previewDescription: "RCLearnRemoteInstructionalText") {}
            }
            
            TSKSection("RCSystemControlGroupTitle") {
                TSKActionItem(
                    "RCIRPowerTitle",
                    status: "SettingsON",
                    previewDescription: "RCIRPowerInstructionalTextNoRemote"
                ) {}
                
                TSKActionItem(
                    "RCVCTitle",
                    status: "SettingsOFF",
                    previewDescription: "RCVCInstructionalTextNoRemote"
                ) {}
            }
        }
    }
}
