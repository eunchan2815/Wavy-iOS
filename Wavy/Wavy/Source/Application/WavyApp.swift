//
//  WavyApp.swift
//  Wavy
//
//  Created by dgsw30 on 2/8/25.
//

import SwiftUI

@main
struct WavyApp: App {
    @State private var isActive = false
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                if isActive {
                    LoginView()
//                    RootView()
                } else {
                    AppFirstView()
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    withAnimation {
                        isActive = true
                    }
                }
            }
        }
    }
}
