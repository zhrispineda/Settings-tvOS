//
//  AppsSection.swift
//  TVSettings
//
//  Settings > Apps
//

import SwiftUI

struct AppsSection: SettingsSectionBuilder {
    func build() -> TSKViewWrapper.SettingItemData {
        TSKItem("AppsTitle") {
            TSKSection {
                TSKActionItem(
                    "AutoUpdateAppsTitle",
                    status: "SettingsON"
                ) {}
                
                TSKActionItem(
                    "AppsAutoDownloadBackgroundAssetsTitle",
                    status: "SettingsON",
                    previewDescription: "AppsAutoDownloadBackgroundAssetsDescription"
                ) {}
                
                TSKActionItem(
                    "AppsAutoOffloadTitle",
                    status: "SettingsOFF",
                    previewDescription: "AppsAutoOffloadDescription"
                ) {}
            }
        }
    }
}
