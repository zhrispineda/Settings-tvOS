//
//  GeneralSection.swift
//  TVSettings
//

import SwiftUI

struct GeneralSection: SettingsSectionBuilder {
    let colorScheme: ColorScheme
    
    func build() -> TSKViewWrapper.SettingItemData {
        TSKItem("GeneralTitle") {
            TSKSection {
                TSKItem("AboutTitle") {
                    TSKSection {}
                }
                TSKItem(
                    "GeneralAppearanceSectionTitle",
                    status: colorScheme == .light ? "AppearanceLightModeName" : "AppearanceDarkModeName",
                    previewDescription: "UserInterfaceStyleDescription"
                ) {
                    TSKSection {}
                }
                TSKItem("SleepTimeTitle", status: "15 minutes", previewDescription: "SleepTimeDescription") {
                    TSKSection {}
                }
                TSKItem("RestrictionsTitle", status: "SettingsOFF") {
                    TSKSection {}
                }
                TSKItem("PrivacyTitle") {
                    TSKSection {}
                }
                TSKItem("LegalAndRegulatoryTitle") {
                    TSKSection {}
                }
            }
            
            TSKSection("Language & Region") {
                TSKItem("Apple TV Languages", status: "UseMe", previewImageName: "globe") {
                    TSKSection {}
                }
                TSKItem("Keyboard Layout", status: "Auto", previewDescription: "KeyboardTypeDescription") {
                    TSKSection {}
                }
                TSKActionItem("Dictation", status: "Off", previewDescription: "DictationDescription") {}
                TSKItem("RegionFormatTitle", status: "United States") {
                    TSKSection {}
                }
            }
            
            TSKSection("GeneralSiriSectionTitle") {
                TSKActionItem("SiriEnableTitle", status: "Off", previewDescription: "SiriDescription") {}
                TSKItem("SiriLanguageTitle", status: "English (United States)", previewDescription: "SiriDescription") {
                    TSKSection {}
                }
                TSKItem("SiriHistoryTitle", previewDescription: "SiriHistoryDescriptionNotOptedIn") {
                    TSKSection {}
                }
                TSKActionItem("SiriAlwaysShowSpeechTitle", status: "Off", previewDescription: "SiriAlwaysShowSpeechDescription") {}
                TSKActionItem("SiriOSAItemTitle", status: "Off", previewDescription: "SiriOSAItemDescription") {}
                TSKItem("SiriTCCItemTitle", previewDescription: "SiriTCCItemDescription") {
                    TSKSection {}
                }
                TSKItem("BUTTON_TITLE") {
                    TSKSection {}
                }
            }
            
            TSKSection("GeneralUsageSectionTitle") {
                TSKItem("DeviceUsageTitle") {
                    TSKSection {}
                }
                TSKItem("BackgroundAppRefreshTitle") {
                    TSKSection {}
                }
                TSKItem("PreviouslyUsedEmailTitle") {
                    TSKSection {}
                }
            }
            
            TSKSection("GeneralDateAndTimeSectionTitle") {
                TSKActionItem("TimeZoneSetAutomaticallyTitle", status: "SettingsOFF") {}
                TSKItem("TimeZoneTitle", status: "Cupertino") {
                    TSKSection {}
                }
                TSKActionItem("TimeZoneSet24HourTitle", status: "TimeZone12HrValue") {}
            }
            
            TSKSection("GeneralManagementSectionTitle") {
                TSKItem("com.apple.preferences.application-firewall", status: "VPNInactiveValue") {
                    TSKSection {}
                }
                TSKItem("BUTTON_TITLE") {
                    TSKSection {}
                }
            }
        }
    }
}
