//
//  TSKViewControllerBridge.swift
//  TVSettings
//

import SwiftUI

struct TSKViewWrapper: UIViewControllerRepresentable {
    let navigationTitle: String?
    let settingGroups: [SettingGroupData]
    
    struct SettingGroupData {
        let title: String?
        let items: [SettingItemData]
    }
    
    struct SettingItemData {
        let title: String
        let accessoryType: AccessoryType
        let action: (() -> Void)?
        let subviews: [SettingGroupData]?
        let previewDescription: String?
        let previewImageName: String
        let badgeCount: Int?
        
        enum AccessoryType {
            case none
            case disclosureIndicator
        }
        
        init(
            title: String,
            accessoryType: AccessoryType = .none,
            action: (() -> Void)? = nil,
            subviews: [SettingGroupData]? = nil,
            previewDescription: String? = nil,
            previewImageName: String = "settings_atv2_device",
            badgeCount: Int = 0
        ) {
            self.title = title
            self.accessoryType = accessoryType
            self.action = action
            self.subviews = subviews
            self.previewDescription = previewDescription
            self.previewImageName = previewImageName
            self.badgeCount = badgeCount
        }
    }
    
    init(
        navigationTitle: String? = nil,
        settingGroups: [SettingGroupData] = []
    ) {
        self.navigationTitle = navigationTitle
        self.settingGroups = settingGroups
    }
    
    init(
        _ navigationTitle: String? = nil,
        @SettingGroupBuilder builder: () -> [SettingGroupData]
    ) {
        self.navigationTitle = navigationTitle
        self.settingGroups = builder()
    }
    
    func makeUIViewController(context: Context) -> UIViewController {
        let previewMap = NSMutableDictionary()
        let groups = buildGroupsRecursivelyWithImages(from: settingGroups, coordinator: context.coordinator, previewMap: previewMap)
        
        guard let tskVC = TSKViewControllerBridge.create(with: groups, model: settingGroups, previewMap: previewMap) else {
            return UIViewController()
        }
        
        if let title = navigationTitle {
            tskVC.title = title
        }
        
        let navController = UINavigationController(rootViewController: tskVC)
        
        guard let splitViewClass = NSClassFromString("_TSKSplitViewController") as? NSObject.Type else {
            return navController
        }
        
        guard let splitVCAlloc = splitViewClass.perform(NSSelectorFromString("alloc"))?.takeUnretainedValue() as? NSObject else {
            return navController
        }
        
        let splitVC = splitVCAlloc.perform(
            NSSelectorFromString("initWithNavigationController:"),
            with: navController
        )?.takeUnretainedValue() as? UIViewController
        
        let finalVC = splitVC ?? navController

        return finalVC
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
    
    private func buildGroupsRecursivelyWithImages(from groupsData: [SettingGroupData], coordinator: Coordinator, previewMap: NSMutableDictionary) -> [NSObject] {
        var groups: [NSObject] = []
        
        for groupData in groupsData {
            var items: [NSObject] = []
            
            for itemData in groupData.items {
                if let subviews = itemData.subviews, !subviews.isEmpty {
                    let childPreviewMap = NSMutableDictionary()
                    let subGroups = buildGroupsRecursivelyWithImages(from: subviews, coordinator: coordinator, previewMap: childPreviewMap)
                    
                    guard let childClass = TSKViewControllerBridge.registerSubclass(with: subGroups) else {
                        continue
                    }
                    
                    let childClassName = NSStringFromClass(childClass)
                    TSKViewControllerBridge.previewMapMap[childClassName] = childPreviewMap
                    
                    if let childItem = TVSettingKitBridge.shared.createChildPaneItem(
                        title: itemData.title,
                        description: itemData.previewDescription,
                        childControllerClass: childClass
                    ) {
                        childItem.setValue(itemData.previewDescription, forKey: "localizedDescription")
                        previewMap.setObject(itemData.previewImageName, forKey: NSValue(nonretainedObject: childItem))
                        items.append(childItem)
                    }
                } else if itemData.accessoryType == .disclosureIndicator {
                    let childPreviewMap = NSMutableDictionary()
                    let emptyGroup = TVSettingKitBridge.shared.createSettingGroup(title: "", items: [])
                    guard let emptyGroup = emptyGroup else { continue }
                    
                    guard let childClass = TSKViewControllerBridge.registerSubclass(with: [emptyGroup]) else {
                        continue
                    }
                    
                    let childClassName = NSStringFromClass(childClass)
                    TSKViewControllerBridge.previewMapMap[childClassName] = childPreviewMap
                    
                    if let childItem = TVSettingKitBridge.shared.createChildPaneItem(
                        title: itemData.title,
                        description: itemData.previewDescription,
                        childControllerClass: childClass
                    ) {
                        childItem.setValue(itemData.previewDescription, forKey: "localizedDescription")
                        previewMap.setObject(itemData.previewImageName, forKey: NSValue(nonretainedObject: childItem))
                        items.append(childItem)
                    }
                } else if let actionClosure = itemData.action {
                    if let actionItem = TVSettingKitBridge.shared.createActionItem(
                        title: itemData.title,
                        description: itemData.previewDescription,
                        target: coordinator,
                        action: #selector(Coordinator.handleActionItem(_:))
                    ) {
                        coordinator.registerAction(for: actionItem, action: actionClosure)
                        items.append(actionItem)
                    }
                } else {
                    if let item = TVSettingKitBridge.shared.createSettingItem(
                        title: itemData.title,
                        description: itemData.previewDescription,
                        representedObject: nil,
                        keyPath: nil
                    ) {
                        previewMap.setObject(itemData.previewImageName, forKey: NSValue(nonretainedObject: item))
                        items.append(item)
                    }
                }
            }
            
            if let group = TVSettingKitBridge.shared.createSettingGroup(
                title: groupData.title ?? "",
                items: items
            ) {
                groups.append(group)
            }
        }
        
        return groups
    }
    
    class Coordinator {
        var viewController: UIViewController?
        var navigationController: UINavigationController?
        var groups: [NSObject] = []
        
        private var actionMap: NSMapTable<AnyObject, AnyObject> = NSMapTable.weakToStrongObjects()
        
        func registerAction(for item: NSObject, action: @escaping () -> Void) {
            actionMap.setObject(ActionBox(action), forKey: item)
        }
        
        @objc func handleActionItem(_ sender: Any) {
            guard let senderObj = sender as AnyObject?,
                  let box = actionMap.object(forKey: senderObj) as? ActionBox else { return }
            box.action()
        }
        
        private class ActionBox: NSObject {
            let action: () -> Void
            init(_ action: @escaping () -> Void) { self.action = action }
        }
    }
}

// MARK: - Result Builders
@resultBuilder
struct SettingGroupBuilder {
    static func buildBlock(_ components: TSKViewWrapper.SettingGroupData...) -> [TSKViewWrapper.SettingGroupData] {
        components
    }
}

@resultBuilder
struct SettingItemBuilder {
    static func buildBlock(_ components: TSKViewWrapper.SettingItemData...) -> [TSKViewWrapper.SettingItemData] {
        components
    }
}

@resultBuilder
struct SettingGroupSectionBuilder {
    static func buildBlock(_ components: TSKViewWrapper.SettingGroupData...) -> [TSKViewWrapper.SettingGroupData] {
        components
    }
}

// MARK: - Builder Functions
func TSKGroup(
    _ title: String? = nil,
    @SettingItemBuilder builder: () -> [TSKViewWrapper.SettingItemData]
) -> TSKViewWrapper.SettingGroupData {
    TSKViewWrapper.SettingGroupData(title: title, items: builder())
}

func TSKSection(
    _ title: String? = nil,
    @SettingItemBuilder builder: () -> [TSKViewWrapper.SettingItemData]
) -> TSKViewWrapper.SettingGroupData {
    TSKViewWrapper.SettingGroupData(title: title, items: builder())
}

func TSKItem(
    title: String,
    accessoryType: TSKViewWrapper.SettingItemData.AccessoryType = .none,
    previewDescription: String? = nil,
    previewImageName: String = "settings_atv2_device",
    badgeCount: Int = 0,
    action: (() -> Void)? = nil
) -> TSKViewWrapper.SettingItemData {
    TSKViewWrapper.SettingItemData(
        title: title,
        accessoryType: accessoryType,
        action: action,
        subviews: nil,
        previewDescription: previewDescription,
        previewImageName: previewImageName,
        badgeCount: badgeCount
    )
}

func TSKItem(
    _ title: String,
    accessoryType: TSKViewWrapper.SettingItemData.AccessoryType = .none,
    previewDescription: String? = nil,
    previewImageName: String = "settings_atv2_device",
    badgeCount: Int = 0,
    @SettingGroupSectionBuilder builder: () -> [TSKViewWrapper.SettingGroupData]
) -> TSKViewWrapper.SettingItemData {
    let subviews = builder()
    return TSKViewWrapper.SettingItemData(
        title: title,
        accessoryType: accessoryType,
        action: nil,
        subviews: subviews.isEmpty ? nil : subviews,
        previewDescription: previewDescription,
        previewImageName: previewImageName,
        badgeCount: badgeCount
    )
}
