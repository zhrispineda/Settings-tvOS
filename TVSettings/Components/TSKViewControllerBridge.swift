//
//  TSKViewControllerBridge.swift
//  TVSettings
//

import SwiftUI

class TSKViewControllerBridge: NSObject {
    private static var groupsMap: [String: NSArray] = [:]
    static var previewMapMap: [String: NSMutableDictionary] = [:]
    
    static func registerSubclass(with groups: [NSObject]) -> AnyClass? {
        guard let baseClass = NSClassFromString("TSKViewController") else { return nil }

        let subclassName = "TSKViewController_\(UUID().uuidString.prefix(8))"
        guard let subclass = objc_allocateClassPair(baseClass, subclassName, 0) else { return nil }

        let className = NSStringFromClass(subclass)
        groupsMap[className] = groups as NSArray

        let loadSel = NSSelectorFromString("loadSettingGroups")
        let loadIMP: @convention(block) (AnyObject) -> NSArray? = { instance in
            let className = NSStringFromClass(type(of: instance))
            return Self.groupsMap[className]
        }
        
        let previewSel = NSSelectorFromString("previewForItemAtIndexPath:")
        let previewIMP: @convention(block) (AnyObject, AnyObject) -> AnyObject? = { instance, indexPath in
            let className = NSStringFromClass(type(of: instance))
            guard let previewMap = Self.previewMapMap[className] else { return nil }
            
            let getItemSel = NSSelectorFromString("settingItemAtIndexPath:")
            guard let obj = instance as? NSObject else { return nil }
            guard let item = obj.perform(getItemSel, with: indexPath)?.takeUnretainedValue() as? NSObject else {
                return nil
            }
            
            let itemKey = NSValue(nonretainedObject: item)
            let previewImageName = previewMap.object(forKey: itemKey) as? String ?? "settings_atv2_device"
            let description = item.value(forKey: "localizedDescription") as? String
            
            return Self.createPreviewViewController(with: previewImageName, description: description)
        }
        
        class_addMethod(subclass, loadSel, imp_implementationWithBlock(loadIMP), "@@:")
        class_addMethod(subclass, previewSel, imp_implementationWithBlock(previewIMP), "@@:@")
        
        return subclass
    }
    
    static func create(with groups: [NSObject], model: [TSKViewWrapper.SettingGroupData], previewMap: NSMutableDictionary) -> UIViewController? {
        guard let subclass = registerSubclass(with: groups) else { return nil }
        
        let className = NSStringFromClass(subclass)
        previewMapMap[className] = previewMap
        
        guard
            let subclassAlloc = (subclass as! NSObject.Type).perform(NSSelectorFromString("alloc"))?.takeUnretainedValue() as? NSObject,
            let instance = subclassAlloc.perform(NSSelectorFromString("init"))?.takeUnretainedValue() as? UIViewController
        else { return nil }
        
        return instance
    }
    
    private static func createPreviewViewController(with imageName: String, description: String?) -> UIViewController? {
        let image: UIImage
        
        if imageName == "globe" {
            let configuration = UIImage.SymbolConfiguration(pointSize: 512, weight: .thin, scale: .default)
            guard let sysImage = UIImage(systemName: imageName, withConfiguration: configuration) else {
                return nil
            }
            image = sysImage
        } else {
            guard let namedImage = UIImage(named: imageName) else { return nil }
            image = namedImage
        }
        
        guard
            let vibrantImageViewClass = NSClassFromString("TSKVibrantImageView") as? NSObject.Type,
            let vibrantAlloc = vibrantImageViewClass.perform(NSSelectorFromString("alloc"))?.takeUnretainedValue() as? NSObject,
            let vibrantView = vibrantAlloc.perform(NSSelectorFromString("initWithImage:identifier:"), with: image, with: imageName as NSString)?.takeUnretainedValue() as? NSObject
        else {
            return nil
        }

        guard
            let previewClass = NSClassFromString("TSKPreviewViewController") as? NSObject.Type,
            let previewAlloc = previewClass.perform(NSSelectorFromString("alloc"))?.takeUnretainedValue() as? NSObject,
            let previewVC = previewAlloc.perform(NSSelectorFromString("init"))?.takeUnretainedValue() as? UIViewController
        else {
            return nil
        }

        previewVC.perform(NSSelectorFromString("setContentView:"), with: vibrantView)
        if let desc = description {
            previewVC.perform(NSSelectorFromString("setDescriptionText:"), with: desc as NSString)
        }
        
        return previewVC
    }
}

