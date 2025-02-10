//
//  ReportView.swift
//  Wavy
//
//  Created by dgsw30 on 2/9/25.
//

import SwiftUI

struct ReportView: View {
    var body: some View {
        VStack {
            HomeComponent(title: "chillchill맞은", content: "난칠하다", date: "2025-02-09", profile: .chillGuy, background: .image2)
            
            HomeComponent(title: "뽀야미", content: "난칠하다", date: "2025-02-09", profile: .yami, background: .image3)
        }
        .WavyBackButton()
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarTitle("나의 여행 기록")
    }
}

#Preview {
    ReportView()
}
