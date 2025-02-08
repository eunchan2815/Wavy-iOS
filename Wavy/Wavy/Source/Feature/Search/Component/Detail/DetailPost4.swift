//
//  DetailPost.swift
//  Wavy
//
//  Created by dgsw30 on 2/9/25.
//

import SwiftUI

struct DetailPost4: View {
    @State private var tagList = ["#노을", "#chill", "#보드", "#바다", "#이국", "#섬", "#야경", "#색", "#풍경", "#돛단배", "#해산물", "#맛있다"]
    var body: some View {
        ScrollView {
            VStack {
                Image(.image4)
                    .resizable()
                    .frame(width: 393, height: 240)
                    .aspectRatio(contentMode: .fill)
                
                VStack {
                    HStack {
                        Text("[부산]")
                            .foregroundStyle(.field)
                        Text("부네치아 장림항")
                            .padding(.trailing, 60)
                        Spacer()
                    }
                    .font(.bold(16))
                    .padding(.top, 20)
                    .padding(.vertical, 4)
                    .padding(.leading, 20)
                    
                    HStack {
                        Text("부산광역시 사하구 장림로")
                            .font(.light(12))
                        Spacer()
                    }
                    .padding(.leading, 20)
                    
                    Text("“알록달록한 건물들이 운하를 따라 늘어서 있어\n마치 유럽의 해안 마을에 온 듯한 분위기 속에서\n여유로운 산책과 사진 촬영을 즐길 수 있는 힐링 여행지”")
                        .foregroundStyle(.detail)
                        .font(.bold(15))
                        .padding()
                    
                    
                    HStack {
                        Text("장소키워드")
                        Spacer()
                    }
                    .foregroundStyle(.main)
                    .font(.bold(16))
                    .padding(.leading, 20)
                    
                    
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 70), spacing: 12)], spacing: 12) {
                        ForEach(tagList, id: \.self) { tag in
                            Text(tag)
                                .font(.system(size: 14, weight: .medium))
                                .padding(.horizontal, 14)
                                .padding(.vertical, 8)
                                .background(Color.clear)
                                .foregroundStyle(.ontag)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 50)
                                        .stroke(Color.ontag, lineWidth: 1)
                                )
                                .clipShape(RoundedRectangle(cornerRadius: 50))
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal, 20)
                    
                    
                    //MARK: foreach
                    
                    
                    VStack {
                        Image(icon: .healing)
                            .resizable()
                            .frame(width: 353, height: 132)
                            .overlay {
                                Button {
                                    
                                } label: {
                                    RoundedRectangle(cornerRadius: 50)
                                        .fill(.sub)
                                        .frame(width: 300, height: 35)
                                        .overlay {
                                            Image(icon: .healing1)
                                                .resizable()
                                                .frame(width: 198, height: 19)
                                        }
                                }
                            }
                    }
                    .padding(.top, 100)
                }
            }
            Spacer()
                .WavyBackButton()
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarTitle("상세정보")
                .font(.bold(20))
        }
        .refreshable {
            
        }
    }
}

#Preview {
    DetailPost4()
}

