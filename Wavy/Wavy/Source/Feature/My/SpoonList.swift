//
//  SpoonList.swift
//  Wavy
//
//  Created by dgsw30 on 2/9/25.
//

import SwiftUI

struct SpoonList: View {
    var body: some View {
        VStack {
            MyComponent(title: "딸기맛요플레", content: "무념무상하게", date: "2025-02-08", profile: .chillGuy, background: .image3, number: "24")
            MyComponent(title: "딸기맛요플레", content: "칠하게살자", date: "2025-02-09", profile: .chillGuy, background: .image5, number: "81")
        }
        .WavyBackButton()
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarTitle("나의 좋아요")
    }
}

#Preview {
    SpoonList()
}
