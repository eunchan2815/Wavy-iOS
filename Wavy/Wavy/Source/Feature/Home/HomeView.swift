//
//  HomeView.swift
//  Wavy
//
//  Created by dgsw30 on 2/8/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Image(icon: .mainIcon)
                        .resizable()
                        .frame(width: 80, height: 32)
                    Spacer()
                }
                .padding(.bottom, 30)
                .padding(.leading, 30)
                HStack {
                    Text("힐링 한 스푼으로\n마음의 여유를 가져봐요!")
                        .font(.bold(25))
                    Spacer()
                }
                .padding(.leading, 40)
            }
            
            VStack {
                HomeComponent(title: "난칠하다", content: "chillchill", date: "2025-02-08", profile: .chillGuy, background: .image2)
                HomeComponent(title: "야미", content: "zzzzz", date: "2025-02-09", profile: .yami, background: .image1)
                HomeComponent(title: "박민준데", content: "ㅋㅋㅋㅋㅋ", date: "2025-02-09", profile: .kitty, background: .image4)
                HomeComponent(title: "10분남음", content: "빨리", date: "2025-02-08", profile: .sexy, background: .image5)
            }
            Spacer()
        }
        .refreshable {
            
        }
    }
}

#Preview {
    HomeView()
}
