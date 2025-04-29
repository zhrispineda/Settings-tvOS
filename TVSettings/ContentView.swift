//
//  ContentView.swift
//  TVSettings
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        NavigationStack {
            HStack {
                Image(.settingsAtv2Device)
                    .foregroundStyle(Color(UIColor.quaternaryLabel))
                    .frame(width: UIScreen.main.bounds.width * 0.45)
                
                ZStack {
                    Form {
                        NavigationLink("General") {}
                        NavigationLink("Users and Accounts") {}
                        NavigationLink("Video and Audio") {}
                        NavigationLink("Screen Saver") {}
                        NavigationLink("AirPlay and HomeKit") {}
                        NavigationLink("Remotes and Devices") {}
                        NavigationLink("Accessibility") {}
                        NavigationLink("Apps") {}
                        NavigationLink("Network") {}
                        NavigationLink("System") {}
                        NavigationLink("Developer") {}
                        Button("Sleep Now") {}
                    }
                    .contentMargins(30, for: .scrollContent)
                    .frame(height: 800)
                    .padding(.top, 100)
                    ._safeAreaInsets(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
                }
            }
            .navigationTitle("Settings")
        }
        .background(Color.gray.opacity(colorScheme == .light ? 0.7 : 0.2))
    }
}

#Preview {
    ContentView()
}
