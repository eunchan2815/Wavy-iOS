//
//  Recommend.swift
//  Wavy
//
//  Created by dgsw30 on 2/9/25.
//

import SwiftUI

struct Recommend: View {
    @State private var inputText = ""
    var body: some View {
        ZStack {
            Color.black.opacity(0.2)
            Image(.recommend)
                .resizable()
                .frame(width: 345, height: 320)
                .overlay {
                    TextField("여행을 통해 마음의 안정을 찾았나요?\n한줄 평을 작성해주세요!", text: $inputText)
                        .frame(width: 277, height: 44)
                        .font(.medium(12))
                        .padding(.bottom, 100)
                        .padding(.leading)
                        .frame(width: 300, height: 50)
                    WriteCompolete(action: {
                        
                    }, bool: inputText.isEmpty)
                    .padding(.top, 240)
                }
        }
        .WavyBackButton()
        .ignoresSafeArea()
    }
}

#Preview {
    Recommend()
}
