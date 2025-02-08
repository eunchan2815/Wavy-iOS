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
                .padding(.leading, 30)
                .padding(.vertical, 30)
                HStack {
                    Text("어디로 여행 갈까요?")
                        .font(.bold(23))
                    Spacer()
                }
                .padding(.leading, 30)
                
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
                        Image(.image1)
                            .resizable()
                            .frame(width: 377, height: 163)
                        HStack {
                            HStack {
                                Text("[서울]")
                                    .foregroundStyle(.field)
                                Text("잠원 한강공원")
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
                
                HStack {
                    ImageComponent(text1: "[경남]", text2: "외도 보타니아", image: .image2, naivgation: DetailPost2())
                        .padding(.horizontal, 14)
                    ImageComponent(text1: "[경기]", text2: "나지모리 스튜디오", image: .image3, naivgation: DetailPost3())
                        .padding(.horizontal, 14)
                }
                
                HStack {
                    ImageComponent(text1: "[부산]", text2: "부네치아 장림항", image: .image4, naivgation: DetailPost4())
                        .padding(.horizontal, 14)
                    ImageComponent(text1: "[강원]", text2: "마곡 유원지", image: .image5, naivgation: DetailPost5())
                        .padding(.horizontal, 14)
                }
                
            }
            Spacer()
        }
        .refreshable {
            
        }
        .navigationDestination(isPresented: $navigate) {
            DetailPost()
        }
    }
}

#Preview {
    SearchView()
}
