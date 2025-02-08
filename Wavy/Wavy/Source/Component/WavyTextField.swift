//
//  WavyTextField.swift
//  Wavy
//
//  Created by dgsw30 on 2/8/25.
//

import SwiftUI

struct WavyTextField: View {
    @State var image: TextFieldCase
    let text: String
    @Binding var posttext: String
    
    var body: some View {
        HStack {
            if image == .human {
                image.icon
                    .resizable()
                    .frame(width: 22, height: 24)
                    .padding(.leading, 12)
            } else {
                image.icon
                    .resizable()
                    .frame(width: 23, height: 19)
                    .padding(.leading, 12)
            }
            
            TextField(text, text: $posttext)
                .padding(.leading, 11)
                .frame(height: 50)
                .tint(.field)
                .font(.custom("Pretendard-Regular", size: 14))
                .autocapitalization(.none)
                .textInputAutocapitalization(.never)
                .hideKeyBoard()
            
        }
        .frame(width: 337, height: 60)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(posttext.isEmpty ? Color.init(uiColor: .systemGray4) : Color.field , lineWidth: 1)
        )
        .padding(.vertical, 2)
    }
}
