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
                TSKActionItem("RestartTitle") {
                    reboot()
                }
            }
        }
    }
    
    /// This will send a reboot signal to Apple TV through PineBoard/PineBoardServices.
    /// But because this application is missing required entitlements, the sleep request will fail.
    ///
    /// Missing entitlements might include:
    ///
    /// `com.apple.appletv.pbs.allow-reboot`
    private func reboot() {
        guard
            let cls = NSClassFromString("PBSSystemService") as? NSObject.Type,
            let shared = cls.perform(NSSelectorFromString("sharedInstance"))?.takeUnretainedValue() as? NSObject
        else { return }

        shared.perform(NSSelectorFromString("reboot"))
        print("-[PBSSystemService reboot]")
    }
}
