//
//  SignupView.swift
//  Wavy
//
//  Created by dgsw30 on 2/8/25.
//

import SwiftUI

struct SignupView: View {
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        Spacer(minLength: 30)
        VStack {
            HStack {
                Text("이메일과 비밀번호를\n입력해주세요.")
                    .font(.bold(24))
                Spacer()
            }
            .padding(.leading, 30)
            
            VStack {
                WavyTextField(image: .human, text: "이메일을 입력해주세요", posttext: $email)
                WavySecureField(image: .lock, text: "비밀번호를 입력해주세요", postText: $password)
            }
            .padding(.top, 60)
            
            WavyNextButton(destination: GetUserInfo(), bool: email.isEmpty || password.isEmpty)
            
            .padding(.top, 70)
        }
        Spacer()
            .WavyBackButton()
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    ProgressBar(progress: .one)
                        .padding(.trailing, 160)
                }
            }
    }
}

#Preview {
    SignupView()
}
