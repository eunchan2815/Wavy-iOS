//
//  GetUserInfo.swift
//  Wavy
//
//  Created by dgsw30 on 2/8/25.
//

import SwiftUI

struct GetUserInfo: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        Spacer(minLength: 30)
        VStack {
            HStack {
                Text("회원가입을 위해 사용자 정보를\n입력해주세요.")
                    .font(.bold(24))
                Spacer()
            }
            .padding(.leading, 30)
            
            VStack {
                WavyTextField(image: .human, text: "닉네임을 입력해주세요", posttext: $email)
                WavyNumberField(postText: $password)
            }
            .padding(.top, 60)
            
            WavyNextButton(destination: GetUserHomeInfo(), bool: email.isEmpty || password.isEmpty)
            
                .padding(.top, 70)
        }
        Spacer()
            .WavyBackButton()
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    ProgressBar(progress: .two)
                        .padding(.trailing, 160)
                }
            }
    }
}

#Preview {
    GetUserInfo()
}
