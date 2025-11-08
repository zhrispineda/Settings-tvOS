//
//  AudioViewSection.swift
//  TVSettings
//
//  Settings > Video and Audio
//

struct AudioViewSection: SettingsSectionBuilder {
    func build() -> TSKViewWrapper.SettingItemData {
        TSKItem("AudioVideoTitle") {
            TSKSection("AVVideoSectionTitle") {
                TSKItem("AVFormatTitle", status: "1080p SDR", previewDescription: "AVFormatDescription") {
                    TSKSection {}
                }
                TSKItem("AVSDRColorMappingTitle", status: "RBG High", previewDescription: "AVSDRColorMappingDescription") {
                    TSKSection {}
                }
                TSKItem("AVNativeModeSwitchingFormatToMatchVideo", status: "SettingsOFF", previewDescription: "AVNativeModeSwitchingFormatToMatchVideoDescription") {
                    TSKSection {}
                }
                TSKActionItem("AVTapToZoomTitle", status: "SettingsOFF", previewDescription: "AVTapToZoomDescription") {}
                TSKActionItem("AVRestoreDefaultDisplayMode", previewDescription: "AVRestoreDefaultDisplayModeDescription") {}
            }
            
            TSKSection("AVAudioSectionTitle") {
                TSKItem("AVDolbyDigitalTitle", previewDescription: "AVDolbySurroundSoundWithConvertFormatDescription") {}
                TSKActionItem("AVNavigationClicksTitle", status: "SettingsON") {}
                TSKActionItem("AVTransitonSoundsTitle", status: "SettingsON") {}
                TSKActionItem("AVAudioOutputTitle", status: "AVAudioOutputHighQuality", previewDescription: "AVAudioOutputDescription") {}
                TSKItem("AVAudioLanguageTitle", status: "AVAudioLanguageDefault", previewDescription: "AVAudioLanguageTitleDescription") {
                    TSKSection {}
                }
            }
            
            TSKSection("AVAutomaticSubtitlesSectionTitle") {
                TSKActionItem("AVShowForDifferentLanguagesTitle", status: "SettingsON", previewDescription: "AVShowForDifferentLanguagesDescription") {}
                TSKItem("AVSubtitleLanguageTitle", status: "AVSubtitleModeAuto") {
                    TSKSection {}
                }
                TSKActionItem("AVShowWhenMutedTitle", status: "SettingsON", previewDescription: "AVShowWhenMutedDescription") {}
                TSKActionItem("AVShowOnSkipBackTitle", status: "SettingsON", previewDescription: "AVShowOnSkipBackDescription") {}
            }
            
            TSKSection("AVCalibrationSectionTitle") {
                TSKItem("AVAudioSyncTitle", previewDescription: "AVAudioSyncDescription") {}
                TSKItem("AVOverscanTitle") {}
                TSKItem("AVColorBarsTitle") {}
            }
        }
    }
}
