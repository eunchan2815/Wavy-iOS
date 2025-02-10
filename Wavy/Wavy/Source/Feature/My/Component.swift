//
//  Component.swift
//  Wavy
//
//  Created by dgsw30 on 2/9/25.
//

import SwiftUI

struct Component: View {
    let date: String
    let title: String
    let string1 : String
    let string2 : String
    let star: Int
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.white)
                .frame(width: 342, height: 120) // 높이 확장
                .shadow(radius: 1)
                .overlay {
                    VStack {
                        HStack {
                            Text(date)
                                .font(.bold(16))
                            Spacer()
                            Text(title)
                                .font(.light(12))
                        }
                        .padding(.horizontal)
                        
                        
                        
                        // 감정 텍스트
                        HStack {
                            HStack {
                                Text(string1)
                                    .background(Color.blue.opacity(0.1)) // 예시 색상
                                    .cornerRadius(8)
                                
                                Text(string2)
                                    .background(Color.blue.opacity(0.1)) // 예시 색상
                                    .cornerRadius(8)
                            }
                            .padding(.trailing, 50)
                            HStack {
                                ForEach(0..<star) { index in
                                    Image(systemName: "star.fill")
                                        .foregroundColor(index < 4 ? .yellow : .gray) // 별 색상
                                        .frame(width: 20, height: 20)
                                }
                            }
                            .padding(.top, 5)
                        }
                    }
                    .padding(.vertical)
                }
        }
    }
}
