//
//  UserProfilesSection.swift
//  TVSettings
//
//  Settings > Profiles and Accounts
//

struct UserProfilesSection: SettingsSectionBuilder {
    func build() -> TSKViewWrapper.SettingItemData {
        TSKItem("AccountsTitle") {
            TSKSection("AccountsUserProfilesPrimaryUserGroupTitle") {
                TSKActionItem("AccountsUserProfilesAddPrimaryUserTitle", previewDescription: "AccountsAddDefaultUserProfileDescription") {}
            }
            
            TSKSection("AccountsUserProfilesGuestUsersGroupTitle") {
                TSKActionItem("AccountsAddNewUserTitle", previewDescription: "AccountsAddAdditionalUserProfileDescription") {}
            }
            
            TSKSection("iTMSAccountsLocationSectionTitle") {
                TSKItem("iTMSLocationTitle", status: "United States") {
                    TSKSection {}
                }
            }
        }
    }
}
