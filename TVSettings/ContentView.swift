//
//  ContentView.swift
//  TVSettings
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TSKViewWrapper("Settings") {
            TSKGroup {
                TSKItem("General") {}
                TSKItem("Profiles and Accounts") {}
                TSKItem("Video and Audio") {}
                TSKItem("Screen Saver") {}
                TSKItem("AirPlay and Apple Home") {}
                TSKItem("Remotes and Devices") {}
                TSKItem("Accessibility") {}
                TSKItem("Apps") {}
                TSKItem("Network") {}
                TSKItem("System") {}
                TSKItem("Developer") {}
                TSKItem("Power Off") {}
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
