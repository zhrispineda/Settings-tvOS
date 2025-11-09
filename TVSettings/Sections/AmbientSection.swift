//
//  AmbientSection.swift
//  TVSettings
//
//  Settings > Screen Saver
//

import SwiftUI

struct AmbientSection: SettingsSectionBuilder {
    func build() -> TSKViewWrapper.SettingItemData {
        TSKItem("ScreenSaverTitle") {
            TSKSection {
                TSKItem(
                    "SaverChooseSaverTitle",
                    status: "SaverBackdropAerialsTitle",
                    previewDescription: "SaverChooseSaverDescription",
                    previewImageName: "settings-screensaver-aerials"
                ) {
                    TSKSection {}
                }
                
                TSKItem(
                    "SaverStartDelayTitle",
                    status: "5 minutes",
                    previewDescription: "SaverStartDelayDescription",
                    previewImageName: "settings-screensaver-aerials"
                ) {
                    TSKSection {}
                }
                
                TSKActionItem(
                    "SaverShowDuringMusicTitle",
                    status: "SaverShowDuringMusicOn",
                    previewDescription: "SaverShowDuringMusicDescription",
                    previewImageName: "settings-screensaver-aerials"
                ) {}
            }
            
            TSKSection("SaverBackdropCategories") {
                TSKItem(
                    "SaverBackdropAerialsTitle",
                    previewDescription: "SaverBackdropAerialsDescription",
                    previewImageName: "settings-screensaver-aerials"
                ) {}
                
                TSKItem(
                    "SaverBackdropPhotosTitle",
                    previewDescription: "SaverBackdropPhotosDescription",
                    previewImageName: "settings-screensaver-aerials"
                ) {}
                
                TSKActionItem(
                    "SaverBackdropPortraitClockTitle",
                    status: "SaverSelectionSetUp",
                    previewDescription: "SaverBackdropPortraitClockSetupDescription",
                    previewImageName: "settings-screensaver-aerials"
                ) {}
            }
        }
    }
}
