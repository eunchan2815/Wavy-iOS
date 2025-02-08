//
//  WavyNumberField.swift
//  Wavy
//
//  Created by dgsw30 on 2/8/25.
//

import SwiftUI

struct WavyNumberField: View {
    @Binding var postText: String
    var body: some View {
        HStack {
            Image(icon: .human)
                .resizable()
                .frame(width: 22, height: 24)
                .padding(.leading, 12)
            
            TextField("나이을 입력해주세요", text: $postText)
                .keyboardType(.numberPad)
                .padding(.leading, 11)
                .frame(height: 50)
                .tint(.field)
                .font(.custom("Pretendard-Regular", size: 14))
                .hideKeyBoard()
            
        }
        .frame(width: 337, height: 60)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(postText.isEmpty ? Color.init(uiColor: .systemGray4) : Color.field , lineWidth: 1)
        )
        .padding(.vertical, 2)
    }
}
