//
//  ContentView.swift
//  TVSettings
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TSKViewWrapper("SettingsTitle") {
            TSKGroup {
                TSKItem("GeneralTitle") {
                    TSKSection {
                        TSKItem("AboutTitle") {}
                        TSKItem("GeneralAppearanceSectionTitle", previewDescription: "UserInterfaceStyleDescription") {}
                        TSKItem("SleepTimeTitle", previewDescription: "SleepTimeDescription") {}
                        TSKItem("RestrictionsTitle") {}
                        TSKItem("PrivacyTitle") {}
                        TSKItem("LegalAndRegulatoryTitle") {}
                    }
                    
                    TSKSection("Language & Region") {
                        TSKItem("Apple TV Languages", previewImageName: "globe") {}
                        TSKItem("Keyboard Layout", previewDescription: "KeyboardTypeDescription") {}
                        TSKItem("Dictation", previewDescription: "DictationDescription") {}
                        TSKItem("RegionFormatTitle") {}
                    }
                    
                    TSKSection("GeneralSiriSectionTitle") {
                        TSKItem("SiriEnableTitle", previewDescription: "SiriDescription") {}
                        TSKItem("SiriLanguageTitle", previewDescription: "SiriDescription") {}
                        TSKItem("SiriHistoryTitle", previewDescription: "SiriHistoryDescriptionNotOptedIn") {}
                        TSKItem("SiriAlwaysShowSpeechTitle", previewDescription: "SiriAlwaysShowSpeechDescription") {}
                        TSKItem("SiriOSAItemTitle", previewDescription: "SiriOSAItemDescription") {}
                        TSKItem("SiriTCCItemTitle", previewDescription: "SiriTCCItemDescription") {}
                        TSKItem("BUTTON_TITLE") {}
                    }
                    
                    TSKSection("GeneralDateAndTimeSectionTitle") {
                        TSKItem("TimeZoneSetAutomaticallyTitle") {}
                        TSKItem("TimeZoneTitle") {}
                        TSKItem("TimeZoneSet24HourTitle", previewDescription: "SiriDescription") {}
                    }
                    
                    TSKSection("GeneralManagementSectionTitle") {
                        TSKItem("com.apple.preferences.application-firewall") {}
                        TSKItem("BUTTON_TITLE") {}
                    }
                }
                
                TSKItem("AccountsTitle") {
                    TSKSection("AccountsUserProfilesPrimaryUserGroupTitle") {
                        TSKItem("AccountsUserProfilesAddPrimaryUserTitle", previewDescription: "AccountsAddDefaultUserProfileDescription") {}
                    }
                    
                    TSKSection("AccountsUserProfilesGuestUsersGroupTitle") {
                        TSKItem("AccountsAddNewUserTitle", previewDescription: "AccountsAddAdditionalUserProfileDescription") {}
                    }
                    
                    TSKSection("iTMSAccountsLocationSectionTitle") {
                        TSKItem("iTMSLocationTitle") {}
                    }
                }
                
                TSKItem("AudioVideoTitle") {
                    TSKSection("AVVideoSectionTitle") {
                        TSKItem("AVFormatTitle", previewDescription: "AVFormatDescription") {}
                        TSKItem("AVSDRColorMappingTitle", previewDescription: "AVSDRColorMappingDescription") {}
                        TSKItem("AVNativeModeSwitchingFormatToMatchVideo", previewDescription: "AVNativeModeSwitchingFormatToMatchVideoDescription") {}
                        TSKItem("AVTapToZoomTitle", previewDescription: "AVTapToZoomDescription") {}
                        TSKItem("AVRestoreDefaultDisplayMode", previewDescription: "AVRestoreDefaultDisplayModeDescription") {}
                    }
                    
                    TSKSection("AVAudioSectionTitle") {
                        TSKItem("AVDolbyDigitalTitle", previewDescription: "AVDolbySurroundSoundWithConvertFormatDescription") {}
                        TSKItem("AVNavigationClicksTitle") {}
                        TSKItem("AVTransitonSoundsTitle") {}
                        TSKItem("AVAudioOutputTitle", previewDescription: "AVAudioOutputDescription") {}
                        TSKItem("AVAudioLanguageTitle", previewDescription: "AVAudioLanguageTitleDescription") {}
                    }
                    
                    TSKSection("AVAudioSectionTitle") {
                        TSKItem("AVShowForDifferentLanguagesTitle", previewDescription: "AVShowForDifferentLanguagesDescription") {}
                        TSKItem("AVSubtitleLanguageTitle") {}
                        TSKItem("AVShowWhenMutedTitle", previewDescription: "AVShowWhenMutedDescription") {}
                        TSKItem("AVShowOnSkipBackTitle", previewDescription: "AVShowOnSkipBackDescription") {}
                    }
                    
                    TSKSection("AVCalibrationSectionTitle") {
                        TSKItem("AVAudioSyncTitle", previewDescription: "AVAudioSyncDescription") {}
                        TSKItem("AVOverscanTitle") {}
                        TSKItem("AVColorBarsTitle") {}
                    }
                }
                
                TSKItem("ScreenSaverTitle") {
                    TSKSection {
                        TSKItem("SaverChooseSaverTitle", previewDescription: "SaverChooseSaverDescription", previewImageName: "settings-screensaver-aerials") {}
                        TSKItem("SaverStartDelayTitle", previewDescription: "SaverStartDelayDescription", previewImageName: "settings-screensaver-aerials") {}
                        TSKItem("SaverShowDuringMusicTitle", previewDescription: "SaverShowDuringMusicDescription", previewImageName: "settings-screensaver-aerials") {}
                    }
                    
                    TSKSection("SaverBackdropCategories") {
                        TSKItem("SaverBackdropAerialsTitle", previewDescription: "SaverBackdropAerialsDescription", previewImageName: "settings-screensaver-aerials") {}
                        TSKItem("SaverBackdropPhotosTitle", previewDescription: "SaverBackdropPhotosDescription", previewImageName: "settings-screensaver-aerials") {}
                        TSKItem("SaverBackdropPortraitClockTitle", previewDescription: "SaverBackdropPortraitClockSetupDescription", previewImageName: "settings-screensaver-aerials") {}
                    }
                }
                
                TSKItem("AirPlayTitle") {
                    TSKSection {
                        TSKItem("APEnabledTitle", previewDescription: "APDescriptionText") {}
                        TSKItem("APAccessControlTitle") {}
                        TSKItem("APCRDTitle", previewDescription: "APCRDModeDescriptionText") {}
                        TSKItem("AVAdjustForOverscanTitle", previewDescription: "AVAdjustForOverscanDescription") {}
                        TSKItem("AirPlayPeerToPeerTitle", previewDescription: "AirPlayPeerToPeerDescription") {}
                    }
                    
                    TSKSection("HomeKitSectionTitle") {
                        TSKItem("WHARoomTitle", previewDescription: "WHASynchronizingDescription") {}
                    }
                }
                
                TSKItem("RemotesTitle") {
                    TSKSection("BluetoothOtherDevicesSectionTitle") {
                        TSKItem("BluetoothItemTitle") {}
                        TSKItem("RCPairRemoteTitle", previewDescription: "RCPairRemoteInstructionalText") {}
                        TSKItem("RCSystemPairingsTitle", previewDescription: "RCSystemPairingsInstructionalText") {}
                        TSKItem("RCLearnRemoteTitle", previewDescription: "RCLearnRemoteInstructionalText") {}
                    }
                    
                    TSKSection("RCSystemControlGroupTitle") {
                        TSKItem("RCIRPowerTitle", previewDescription: "RCIRPowerInstructionalTextNoRemote") {}
                        TSKItem("RCVCTitle", previewDescription: "RCVCInstructionalTextNoRemote") {}
                    }
                }
                
                TSKItem("AccessibilityTitle") {
                    TSKSection("AXVisionSectionTitle") {
                        TSKItem("AXHoverTextTitle", previewDescription: "AXHoverTextDescription") {}
                        TSKItem("AXDisplayAndTextSizeTitle") {}
                        TSKItem("AXMotionTitle") {}
                        TSKItem("AXAudioDescriptionsTitle", previewDescription: "AXAudioDescriptionsDescription") {}
                    }
                    
                    TSKSection("HearingSectionTitle") {
                        TSKItem("AXMonoAudioItemTitle") {}
                        TSKItem("AXAudioBalanceItemTitle") {}
                        TSKItem("AXSubtitlesAndCaptiontingTitle") {}
                        TSKItem("AXExtendedVoiceIsolationModesTitle", previewDescription: "AXExtendedVoiceIsolationModesDetails") {}
                    }
                    
                    TSKSection("AXGeneralSectionTitle") {
                        TSKItem("AXAccessibilityMenuTitle", previewDescription: "AXAccessibilityMenuDescription") {}
                    }
                }
                
                TSKItem("AppsTitle") {
                    TSKSection {
                        TSKItem("AutoUpdateAppsTitle") {}
                        TSKItem("AppsAutoDownloadBackgroundAssetsTitle", previewDescription: "AppsAutoDownloadBackgroundAssetsDescription") {}
                        TSKItem("AppsAutoOffloadTitle", previewDescription: "AppsAutoOffloadDescription") {}
                    }
                }
                
                TSKItem("NetworkTitle") {
                    TSKSection("NetworkConnectionTitle") {
                        TSKItem("NetworkEthernetItem", previewDescription: "NetworkEthernetActiveItemDescription") {}
                        TSKItem("NetworkTroubleshootingItem", previewDescription: "NetworkTroubleshootingItemDescription") {}
                    }
                    
                    TSKSection("VPNSectionTitle") {
                        TSKItem("com.apple.preferences.application-firewall", previewDescription: "VPNSectionDescription") {}
                    }
                    
                    TSKSection("NetworkStatusTitle") {}
                }
                
                TSKItem("SystemTitle") {
                    TSKSection("SetupInfoSectionTitle") {
                        TSKItem("TroubleshootingTitle") {}
                        TSKItem("WhatsNewTitle") {}
                    }
                    
                    TSKSection("SetupMaintenanceSectionTitle") {
                        TSKItem("SoftwareUpdateTitle") {}
                        TSKItem("ResetTitle") {}
                        TSKItem("RestartTitle") {}
                    }
                }
                
                TSKItem("DeveloperTitle") {
                    TSKSection("UIAutomationGroupTitle") {
                        TSKItem("UIAutomationEnableTitle") {}
                    }
                    
                    TSKSection("MediaGroupTitle") {
                        TSKItem("EUVolumeTitle") {}
                        TSKItem("PlaybackHUDTitle") {}
                        TSKItem("ResetMediaServicesTitle") {}
                    }
                    
                    TSKSection("VideoSubscriberAccountGroupTitle") {
                        TSKItem("AppsAllowAccessMSOTitle") {}
                    }
                    
                    TSKSection("TVAppGroupTitle") {
                        TSKItem("TV App") {}
                    }
                    
                    TSKSection("GraphicsHUDGroupTitle") {
                        TSKItem("GraphicsHUDTitle", previewDescription: "GraphicsHUDGroupDescription") {}
                        TSKItem("GraphicsLogPerformanceTitle", previewDescription: "GraphicsHUDGroupDescription") {}
                    }
                    
                    TSKSection("GameTestingGroupTitle") {
                        TSKItem("NotifyAboutScoreSubmissionsTitle", previewDescription: "NotifyAboutScoreSubmissionsDescription") {}
                    }
                    
                    TSKSection("BackgroundAssetsGroupTitle") {
                        TSKItem("DevelopmentOverridesTitle", previewDescription: "DevelopmentOverridesDescription") {}
                    }
                }
                
                TSKItem("SleepTitle") {}
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
