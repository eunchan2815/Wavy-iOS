//
//  MyView.swift
//  Wavy
//
//  Created by dgsw30 on 2/8/25.
//

import SwiftUI

struct Settingview: View {
    var body: some View {
        VStack {
            Image(.profile)
                .resizable()
                .frame(width: 120, height: 120)
            HStack {
                Text("딸기맛 요플레")
                    .font(.bold(20))
                Image(systemName: "pencil")
            }
            .padding(.leading, 30)
            .padding(.bottom, 100)
            
            Image(.lis)
                .resizable()
                .frame(width: 394, height: 286)
            
        }
        .WavyBackButton()
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarTitle("내 정보 관리")
        .font(.bold(20))
    }
}

#Preview {
    Settingview()
}
