//
//  DetailPost.swift
//  Wavy
//
//  Created by dgsw30 on 2/9/25.
//

import SwiftUI

struct DetailPost2: View {
    @State private var tagList = ["#식물", "#chill한", "#거제도", "#피크닉", "#멋진", "#이쁨", "#도심", "#공원", "#잠원", "#ㅋㅋ", "#정원ㅋ", "#좋은"]
    
    var body: some View {
        ScrollView {
            VStack {
                Image(.image2)
                    .resizable()
                    .frame(width: 393, height: 240)
                    .aspectRatio(contentMode: .fill)
                
                VStack {
                    HStack {
                        Text("[서울]")
                            .foregroundStyle(.field)
                        Text("잠원 한강공원")
                            .padding(.trailing, 60)
                        Spacer()
                    }
                    .font(.bold(16))
                    .padding(.top, 20)
                    .padding(.vertical, 4)
                    .padding(.leading, 20)
                    
                    HStack {
                        Text("서울특별시 서초구 잠원동 잠원로")
                            .font(.light(12))
                        Spacer()
                    }
                    .padding(.leading, 20)
                    
                    Text("“탁 트인 강변 풍경 속에서 자전거를 타거나\n돗자리를 펴고 한가롭게 쉬며\n도심 속 여유를 만끽할 수 있는 힐링 여행지”")
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
    DetailPost2()
}

