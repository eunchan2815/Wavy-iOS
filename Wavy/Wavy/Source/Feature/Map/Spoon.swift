//
//  Spoon.swift
//  Wavy
//
//  Created by dgsw30 on 2/9/25.
//

import SwiftUI

struct Spoon: View {
    @State private var inputText = ""
    var body: some View {
        ZStack {
            Color.black.opacity(0.2)
            Image(.sign)
                .resizable()
                .frame(width: 345, height: 245)
                .overlay {
                    TextField("여유롭고 차분한 힐링 한 스푼을 생각해봐요!", text: $inputText)
                        .font(.medium(12))
                        .padding(.leading, 30)
                        .padding(.bottom, 60)
                    WriteCompolete(action: {
                        
                    }, bool: inputText.isEmpty)
                    .padding(.top, 160)
                }
                .padding()
        }
        .WavyBackButton()
        .ignoresSafeArea()
    }
}

#Preview {
    Spoon()
}
