//
//  WavyNextButton.swift
//  Wavy
//
//  Created by dgsw30 on 2/8/25.
//

import SwiftUI

struct WavyNextButton<Destination: View>: View {
    let destination: Destination
    let bool: Bool
    
    var body: some View {
        NavigationLink {
            destination
        } label: {
            RoundedRectangle(cornerRadius: 14)
                .fill(bool ? .disable : .main)
                .frame(width: 345, height: 50)
                .overlay {
                    Text("다음")
                        .font(.bold(17))
                        .foregroundStyle(.white)
                }
        }
        .disabled(bool)
    }
}
