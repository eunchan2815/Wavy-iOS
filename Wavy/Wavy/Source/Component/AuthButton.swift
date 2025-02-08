//
//  AuthButton.swift
//  Wavy
//
//  Created by dgsw30 on 2/8/25.
//

import SwiftUI

struct AuthButton: View {
    let text: String
    let action: () -> Void
    let bool: Bool
    
    var body: some View {
        Button {
            action()
        } label: {
            RoundedRectangle(cornerRadius: 14)
                .fill(bool ? .disable : .main)
                .frame(width: 345, height: 50)
                .overlay {
                    Text(text)
                        .font(.bold(17))
                        .foregroundStyle(.white)
                }
        }
    }
}
