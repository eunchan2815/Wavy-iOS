//
//  SearchView.swift
//  Wavy
//
//  Created by dgsw30 on 2/8/25.
//

import SwiftUI

struct SearchView: View {
    @State private var inputText = ""
    @State private var navigate = false
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Image(icon: .mainIcon)
                        .resizable()
                        .frame(width: 80, height: 32)
                    Spacer()
                }
                .padding(.leading, 20)
                .padding(.vertical, 30)
                HStack {
                    Text("어디로 여행 갈까요?")
                        .font(.bold(23))
                    Spacer()
                }
                .padding(.leading, 20)
                
                SearchComponent(inputText: $inputText) {
                    //MARK: 검색 액션
                }
                .padding()
                Rectangle()
                    .fill(Color.tag)
                    .frame(width: 377, height: 1)
                
                Button {
                    navigate = true
                } label: {
                    VStack {
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 377, height: 163)
                        HStack {
                            HStack {
                                Text("[경남]")
                                    .foregroundStyle(.field)
                                Text("외도 보타니아")
                                    .foregroundStyle(.black)
                                    .padding(.trailing, 60)
                                Spacer()
                            }
                            .font(.bold(14))
                            Spacer()
                        }
                        .padding(.leading, 10)
                    }
                }
                .padding()
                
            }
            Spacer()
        }
        .navigationDestination(isPresented: $navigate) {
            DetailPost()
        }
    }
}

#Preview {
    SearchView()
}
