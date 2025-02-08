//
//  HomeView.swift
//  Wavy
//
//  Created by dgsw30 on 2/8/25.
//

import SwiftUI

struct RootView: View {
    @State private var tabSelection: WavyTabItem = .home
    var body: some View {
        WavyTabView(selection: $tabSelection) {
            switch tabSelection {
            case .home:
                HomeView()
            case .search:
                SearchView()
            case .write:
                WriteView()
            case .map:
                MapView()
            case .my:
                MyView()
            }
        }
    }
}

#Preview {
    RootView()
}
