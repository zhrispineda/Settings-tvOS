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
    
    func createSettingGroup(title: String, items: [NSObject]) -> NSObject? {
        guard let groupClass = settingGroupClass as? NSObject.Type else { return nil }
        
        let selector = NSSelectorFromString("groupWithTitle:settingItems:")
        guard groupClass.responds(to: selector) else { return nil }
        
        let group = groupClass.perform(
            selector,
            with: title,
            with: items
        )?.takeUnretainedValue() as? NSObject
        
        return group
    }
    
    func createChildPaneItem(title: String, description: String?, childControllerClass: AnyClass?) -> NSObject? {
        guard let itemClass = settingItemClass as? NSObject.Type else { return nil }
        
        let selector = NSSelectorFromString("childPaneItemWithTitle:description:representedObject:keyPath:childControllerClass:")
        guard itemClass.responds(to: selector) else { return nil }
        
        let methodSignature = itemClass.method(for: selector)
        typealias CreateFunction = @convention(c) (
            NSObject.Type, Selector, NSString, NSString?, AnyObject?, NSString?, AnyClass?
        ) -> NSObject?
        
        let createMethod = unsafeBitCast(methodSignature, to: CreateFunction.self)
        let item = createMethod(itemClass, selector, title as NSString, description as NSString?, nil, nil, childControllerClass)
        
        return item
    }
    
    func createSettingItem(title: String, description: String?, representedObject: Any?, keyPath: String?) -> NSObject? {
        guard let itemClass = settingItemClass as? NSObject.Type else { return nil }
        
        let selector = NSSelectorFromString("titleItemWithTitle:description:representedObject:keyPath:")
        guard itemClass.responds(to: selector) else { return nil }
        
        let methodSignature = itemClass.method(for: selector)
        typealias CreateFunction = @convention(c) (
            NSObject.Type, Selector, NSString, NSString?, AnyObject?, NSString?
        ) -> NSObject?
        
        let createMethod = unsafeBitCast(methodSignature, to: CreateFunction.self)
        let item = createMethod(itemClass, selector, title as NSString, description as NSString?, representedObject as AnyObject?, keyPath as NSString?)
        
        return item
    }
    
    func createActionItem(title: String, description: String?, target: Any?, action: Selector) -> NSObject? {
        guard let itemClass = settingItemClass as? NSObject.Type else { return nil }
        
        let selector = NSSelectorFromString("actionItemWithTitle:description:representedObject:keyPath:target:action:")
        guard itemClass.responds(to: selector) else { return nil }
        
        let methodSignature = itemClass.method(for: selector)
        typealias CreateFunction = @convention(c) (NSObject.Type, Selector, NSString, NSString?, AnyObject?, NSString?, AnyObject?, Selector) -> NSObject?
        let createMethod = unsafeBitCast(methodSignature, to: CreateFunction.self)
        
        let item = createMethod(
            itemClass,
            selector,
            title as NSString,
            description as NSString?,
            nil,
            nil,
            target as AnyObject?,
            action
        )
        
        return item
    }
}
