//
//  GeneralView.swift
//  TVSettings
//
//  Settings > General
//

import SwiftUI

struct GeneralView: View {
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        NavigationStack {
            HStack {
                Image(.settingsAtv2Device)
                    .foregroundStyle(Color(UIColor.quaternaryLabel))
                    .frame(width: UIScreen.main.bounds.width * 0.45)
                
                ZStack {
                    Form {
                        NavigationLink("About") {}
                        NavigationLink {} label: {
                            HStack {
                                Text("Appearance")
                                Spacer()
                                Text(colorScheme == .light ? "Light" : "Dark")
                                    .foregroundStyle(.secondary)
                                    .padding(.trailing, -30)
                            }
                        }
                        NavigationLink {} label: {
                            HStack {
                                Text("Sleep After")
                                Spacer()
                                Text("15 minutes")
                                    .foregroundStyle(.secondary)
                                    .padding(.trailing, -30)
                            }
                        }
                        NavigationLink {} label: {
                            HStack {
                                Text("Restrictions")
                                Spacer()
                                Text("Off")
                                    .foregroundStyle(.secondary)
                                    .padding(.trailing, -30)
                            }
                        }
                        NavigationLink("Privacy & Security") {}
                        NavigationLink("Legal & Regulatory") {}
                        
                        Section("Language & Region") {
                            NavigationLink {} label: {
                                HStack {
                                    Text("Apple TV Languages")
                                    Spacer()
                                    Text("English")
                                        .foregroundStyle(.secondary)
                                        .padding(.trailing, -30)
                                }
                            }
                            NavigationLink {} label: {
                                HStack {
                                    Text("Keyboard Layout")
                                    Spacer()
                                    Text("Auto")
                                        .foregroundStyle(.secondary)
                                        .padding(.trailing, -30)
                                }
                            }
                            Button {} label: {
                                LabeledContent("Dictation", value: "Off")
                            }
                            NavigationLink {} label: {
                                HStack {
                                    Text("Region")
                                    Spacer()
                                    Text("United States")
                                        .foregroundStyle(.secondary)
                                        .padding(.trailing, -30)
                                }
                            }
                        }
                        
                        Section("Siri") {
                            Button {} label: {
                                LabeledContent("Siri", value: "Off")
                            }
                        }
                    }
                    .contentMargins(30, for: .scrollContent)
                    .frame(height: 800)
                    .padding(.top, 100)
                    ._safeAreaInsets(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
                }
            }
            .navigationTitle("General")
        }
        .background(Color.gray.opacity(colorScheme == .light ? 0.7 : 0.2))
    }
}

#Preview {
    GeneralView()
}
