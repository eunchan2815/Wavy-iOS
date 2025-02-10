//
//  WriteCompolete.swift
//  Wavy
//
//  Created by dgsw30 on 2/9/25.
//

import SwiftUI

struct WriteCompolete: View {
    let action: () -> Void
    let bool : Bool
    var body: some View {
        Button {
            action()
        } label: {
            RoundedRectangle(cornerRadius: 16)
                .fill(bool ? .field : Color.init(uiColor: .systemGray4))
                .frame(width: 314, height: 50)
                .overlay {
                    Text("작성완료")
                        .font(.bold(15))
                        .foregroundStyle(.white)
                }
        }
    }
}
