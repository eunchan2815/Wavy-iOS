//
//  HomeComponent.swift
//  Wavy
//
//  Created by dgsw30 on 2/9/25.
//

import SwiftUI

struct HomeComponent: View {
    let title: String
    let content: String
    let date: String
    let profile: UIImage
    let background: UIImage
    @State private var isSelected = false
    var body: some View {
        ZStack {
            Image(.homeField)
                .resizable()
                .frame(width: 337, height: 120)
            HStack {
                VStack {
                    HStack {
                        Image(uiImage: profile)
                            .resizable()
                            .frame(width: 50, height: 50)
                        VStack(alignment: .leading) {
                            Text(title)
                            Text(date)
                        }
                    }
                    .padding(.trailing, 30)
                    VStack(alignment: .leading) {
                        Text(content)
                        
                        Button {
                            isSelected.toggle()
                        } label: {
                            Image(isSelected ? .clickLove : .love)
                                .resizable()
                                .frame(width: 53, height: 16)
                        }
                    }
                    .padding(.trailing, 90)
                }
                Image(uiImage: background)
                    .resizable()
                    .frame(width: 100, height: 100)
            }
        }
        .padding(.vertical, 3)
    }
}
