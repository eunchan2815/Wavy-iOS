//
//  DetailPost.swift
//  Wavy
//
//  Created by dgsw30 on 2/9/25.
//

import SwiftUI

struct DetailPost3: View {
    @State private var tagList = ["#나는", "#오늘도", "#눈물을", "#흘린다", "#ㅠ", "#여기", "#좋다", "#경기", "#ㅋㅋ", "#여유ㅋ", "#좋은", "#chillㅋ"]
    var body: some View {
        ScrollView {
            VStack {
                Image(.image3)
                    .resizable()
                    .frame(width: 393, height: 240)
                    .aspectRatio(contentMode: .fill)
                
                VStack {
                    HStack {
                        Text("[경기]")
                            .foregroundStyle(.field)
                        Text("니지모리 스튜디오")
                            .padding(.trailing, 60)
                        Spacer()
                    }
                    .font(.bold(16))
                    .padding(.top, 20)
                    .padding(.vertical, 4)
                    .padding(.leading, 20)
                    
                    HStack {
                        Text("경기도 동두천시 천보산로")
                            .font(.light(12))
                        Spacer()
                    }
                    .padding(.leading, 20)
                    
                    Text("“료칸 스타일의 공간을 재현해\n마치 일본 여행을 온 듯한 감성을 느끼며\n여유롭게 힐링할 수 있는 특별한 여행지”")
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
    DetailPost3()
}
