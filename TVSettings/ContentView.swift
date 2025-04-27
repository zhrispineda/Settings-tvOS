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
                Form {}
            }
            .navigationTitle("Settings")
        }
        .background(Color.gray.opacity(colorScheme == .light ? 0.7 : 0.2))
    }
}

#Preview {
    ContentView()
}
