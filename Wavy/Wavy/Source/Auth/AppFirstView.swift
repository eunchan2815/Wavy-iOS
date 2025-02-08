//
//  AppFirstView.swift
//  Wavy
//
//  Created by dgsw30 on 2/8/25.
//

import SwiftUI

struct AppFirstView: View {
    var body: some View {
        ZStack {
            Image(icon: .background)
                .resizable()
            Image(icon: .subIcon)
                .resizable()
                .frame(width: 170, height: 67)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    AppFirstView()
}
