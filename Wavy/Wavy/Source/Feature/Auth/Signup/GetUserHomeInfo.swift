//
//  GetUserHomeInfo.swift
//  Wavy
//
//  Created by dgsw30 on 2/8/25.
//

import SwiftUI

struct GetUserHomeInfo: View {
    @State private var email = ""
    @State private var password = ""
    @State private var selectedGender = ""
    
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
                WavyTextField(image: .home, text: "거주지", posttext: $email)
                HStack {
                    Image(icon: .human)
                        .resizable()
                        .frame(width: 22, height: 24)
                        .padding(.leading, 14)
                    
                    Menu {
                        Button("여성", action: { selectedGender = "여성" })
                        Button("남성", action: { selectedGender = "남성" })
                    } label: {
                        HStack {
                            Text(selectedGender.isEmpty ? "성별을 선택해주세요" : selectedGender)
                                .foregroundColor(selectedGender.isEmpty ? Color.init(uiColor: .systemGray4) : .primary)
                                .font(.regular(14))
                            Spacer()
                            Image(systemName: "chevron.down")
                                .foregroundColor(.gray)
                        }
                        .padding(.leading, 9)
                        .padding(.trailing, 15)
                        .cornerRadius(10)
                    }
                }
                .frame(width: 337, height: 60)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(selectedGender.isEmpty ? Color.init(uiColor: .systemGray4) : Color.field , lineWidth: 1)
                )
                .padding(.vertical, 2)
            }
            .padding(.top, 60)
            
            WavyNextButton(destination: LoginView(), bool: email.isEmpty || password.isEmpty)
                .padding(.top, 70)
        }
        Spacer()
            .WavyBackButton()
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    ProgressBar(progress: .three)
                        .padding(.trailing, 160)
                }
            }
    }
}


#Preview {
    GetUserHomeInfo()
}
