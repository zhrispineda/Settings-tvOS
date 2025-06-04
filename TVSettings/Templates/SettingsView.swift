//
//  SettingsView.swift
//  TVSettings
//

import SwiftUI

/// Template for Settings-like views on tvOS.
struct SettingsView<Content: View>: View {
    @Environment(\.colorScheme) private var colorScheme
    @ViewBuilder let content: Content
    var title = ""
    
    init(title: String, @ViewBuilder content: @escaping () -> Content) {
            self.title = title
            self.content = content()
        }
        
        init(title: String, content: Content) {
            self.title = title
            self.content = content
        }

    var body: some View {
        NavigationStack {
            HStack {
                Image(.settingsAtv2Device)
                    .foregroundStyle(Color(UIColor.quaternaryLabel))
                    .frame(width: UIScreen.main.bounds.width * 0.40)
                
                ZStack {
                    Form {
                        content
                    }
                    .contentMargins(20, for: .scrollContent)
                    .frame(height: 800)
                    .padding(.top, 100)
                    ._safeAreaInsets(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 20))
                }
            }
            .navigationTitle(title)
        }
        .background(Color.gray.opacity(colorScheme == .light ? 0.7 : 0.2))
    }
}

#Preview {
    SettingsView(title: "Example") {
        Text("Example")
    }
}
