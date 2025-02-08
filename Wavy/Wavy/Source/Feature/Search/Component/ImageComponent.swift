//
//  ImageComponent.swift
//  Wavy
//
//  Created by dgsw30 on 2/9/25.
//

import SwiftUI

struct ImageComponent<navigation: View>: View {
    let text1: String
    let text2: String
    var image: UIImage
    let naivgation: navigation
    var body: some View {
        NavigationLink {
            naivgation
        } label: {
            HStack {
                VStack {
                    Image(uiImage: image)
                        .resizable()
                        .frame(width: 163, height: 103)
                    HStack {
                        Text(text1)
                            .foregroundStyle(.field)
                        Text(text2)
                            .foregroundStyle(.black)
                    }
                    .font(.bold(14))
                    .padding(.trailing, 33)
                }
            }
        }
    }
}
