//
//  TVSettingKitBridge.swift
//  TVSettings
//

import Foundation

class TVSettingKitBridge {
    static let shared = TVSettingKitBridge()
    private var settingItemClass: AnyClass?
    private var settingGroupClass: AnyClass?
    
    init() {
        dlopen("/System/Library/PrivateFrameworks/TVSettingKit.framework/TVSettingKit", RTLD_NOW)
        settingItemClass = NSClassFromString("TSKSettingItem")
        settingGroupClass = NSClassFromString("TSKSettingGroup")
    }
}
