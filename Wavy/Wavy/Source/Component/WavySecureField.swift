//
//  WavySecureField.swift
//  Wavy
//
//  Created by dgsw30 on 2/8/25.
//

import SwiftUI

struct WavySecureField: View {
    @State var image: TextFieldCase
    @State private var showPassword = false
    let text: String
    @Binding var postText: String
    
    var body: some View {
        HStack {
            image.icon
                .resizable()
                .frame(width: 20, height: 25)
                .padding(.leading, 12)
            
            if showPassword == true {
                TextField(text, text: $postText)
                    .padding(.leading, 11)
                    .frame(height: 50)
                    .tint(.field)
                    .font(.custom("Pretendard-Regular", size: 14))
                    .autocapitalization(.none)
                    .textInputAutocapitalization(.never)
                    .hideKeyBoard()
            } else {
                SecureField(text, text: $postText)
                    .padding(.leading, 11)
                    .frame(height: 50)
                    .tint(.field)
                    .font(.custom("Pretendard-Regular", size: 14))
                    .autocapitalization(.none)
                    .textInputAutocapitalization(.never)
                    .hideKeyBoard()
            }
            
            Button {
                showPassword.toggle()
            } label: {
                Image(systemName: showPassword ? "eye.slash" : "eye")
                    .foregroundColor(.gray)
                    .padding(.trailing, 12)
            }
            .buttonStyle(PlainButtonStyle())
            
        }
        .frame(width: 337, height: 60)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(postText.isEmpty ? Color.init(uiColor: .systemGray4) : Color.field , lineWidth: 1)
        )
        .padding(.vertical, 2)
    }
}
