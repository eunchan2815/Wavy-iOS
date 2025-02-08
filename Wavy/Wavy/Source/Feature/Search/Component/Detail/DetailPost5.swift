import SwiftUI

struct DetailPost5: View {
    @State private var tagList = ["#식물", "#chillㅋ", "#조용", "#잔디", "#그늘", "#여유", "#쉼터", "#평온", "#캠핑", "#낚시", "#ㅋㅋ", "#Tag"]
    var body: some View {
        ScrollView {
            VStack {
                Image(.image5)
                    .resizable()
                    .frame(width: 393, height: 240)
                    .aspectRatio(contentMode: .fill)
                
                VStack {
                    HStack {
                        Text("[강원]")
                            .foregroundStyle(.field)
                        Text("마곡 유원지")
                            .padding(.trailing, 60)
                        Spacer()
                    }
                    .font(.bold(16))
                    .padding(.top, 20)
                    .padding(.vertical, 4)
                    .padding(.leading, 20)
                    
                    HStack {
                        Text("강원도 홍천군 서면 마곡리")
                            .font(.light(12))
                        Spacer()
                    }
                    .padding(.leading, 20)
                    
                    Text("“한적한 자연 속에서 계곡 물놀이와 캠핑을 즐기며\n여유롭게 힐링할 수 있는 여행지로,\n맑은 물과 울창한 숲이 어우러진 여행지”")
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
    DetailPost5()
}
