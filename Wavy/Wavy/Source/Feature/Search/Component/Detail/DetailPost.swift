//
//  DetailPost.swift
//  Wavy
//
//  Created by dgsw30 on 2/9/25.
//

import SwiftUI

struct DetailPost: View {
    @State private var tagList = ["#식물", "#chill한", "#산책", "#피크닉", "#그늘", "#한걍뷰", "#도심", "#공원", "#정원", "#잔디", "#여유롭", "#힘드노"]
    var body: some View {
        ScrollView {
            VStack {
                Image(.image1)
                    .resizable()
                    .frame(width: 393, height: 240)
                    .aspectRatio(contentMode: .fill)
                
                VStack {
                    HStack {
                        Text("[경남]")
                            .foregroundStyle(.field)
                        Text("외도 보타니아")
                            .padding(.trailing, 60)
                        Spacer()
                    }
                    .font(.bold(16))
                    .padding(.top, 20)
                    .padding(.vertical, 4)
                    .padding(.leading, 20)
                    
                    HStack {
                        Text("경상남도 거제시 일운면 외도길 17 외도해상농원")
                            .font(.light(12))
                        Spacer()
                    }
                    .padding(.leading, 20)
                    
                    Text("“푸른 바다에 떠 있는 아름다운 정원 섬으로,\n 이국적인 식물과 평온한 풍경 속에서\n여유롭게 산책하며 힐링할 수 있는 여행지”")
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
    DetailPost()
}
