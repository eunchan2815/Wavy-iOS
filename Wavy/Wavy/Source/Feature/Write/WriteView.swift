import SwiftUI

struct WriteView: View {
    @State private var date = ""
    @State private var click = [false, false, false, false, false]
    @State private var content = ""
    @State private var title = ""
    @State private var newTag = ""
    @State private var tags = ["행복해요😍", "재밌어요😆", "지루해요😐", "무서워요😱", "여유로운😉",
                               "신나요🤩", "아쉬워요😭", "별로에요😡"]
    @State private var selectedTags: Set<String> = []
    
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
                
                ZStack {
                    Image(icon: .writeBackground)
                        .resizable()
                        .frame(width: 345, height: 630)
                    
                    VStack {
                        HStack {
                            TextField("(날짜를 입력해주세요)", text: $date)
                                .hideKeyBoard()
                                .frame(width: 143, height: 22)
                                .padding()
                                .foregroundStyle(.none)
                                .padding(.top, 10)
                            Spacer()
                        }
                        .font(.bold(16))
                        .padding(.leading, 30)
                        
                        HStack {
                            TextField("여행지를 입력해주세요.", text: $title)
                                .font(.bold(15))
                                .hideKeyBoard()
                        }
                        .padding(.leading, 60)
                        
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 10), count: 4), spacing: 10) {
                            ForEach(tags, id: \.self) { tag in
                                Button {
                                    if selectedTags.contains(tag) {
                                        selectedTags.remove(tag)
                                    } else {
                                        selectedTags.insert(tag)
                                    }
                                } label: {
                                    Text(tag)
                                        .foregroundStyle(.black)
                                        .font(.system(size: 11))
                                        .frame(width: 65, height: 30)
                                        .background(selectedTags.contains(tag) ? Color.sub : Color.white)
                                        .cornerRadius(16)
                                        .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.gray, lineWidth: 1))
                                }
                            }
                        }
                        .padding(.top, 15)
                        .frame(width: 290)
                        
                        Spacer()
                        VStack {
                            Spacer()
                            HStack {
                                HStack {
                                    Button(action: {
                                        if !newTag.isEmpty, !tags.contains(newTag) {
                                            tags.append(newTag)
                                            newTag = ""
                                        }
                                    }) {
                                        Image(systemName: "plus.circle.fill")
                                            .foregroundColor(.blue)
                                            .frame(width: 30, height: 30)
                                    }
                                    
                                    TextField("태그추가하기", text: $newTag)
                                        .frame(width: 140, height: 30)
                                        .cornerRadius(16)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                }
                                .padding(.top, 10)
                                .padding(.leading, 50)
                                Spacer()
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(.gray)
                                    .frame(width: 90, height: 26)
                                    .overlay {
                                        Text("사진첨부")
                                    }
                            }
                            .padding(.trailing, 55)
                            
                            Rectangle()
                                .fill(.gray)
                                .frame(width: 290, height: 1)
                            
                            Text("여행이 만족스러우셨나요?")
                                .font(.medium(17))
                                .padding(.bottom, 4)
                            
                            HStack {
                                ForEach(0..<5, id: \.self) { index in
                                    Button {
                                        click[index].toggle()
                                    } label: {
                                        Image(icon: click[index] ? .clickStar : .star)
                                            .resizable()
                                            .frame(width: 30, height: 30)
                                    }
                                }
                            }
                        }
                        .padding(.bottom, 30)
                        
                        Spacer()
                        WriteCompolete { }
                    }
                }
                Spacer()
            }
        }
        .refreshable {
            
        }
    }
}

#Preview {
    WriteView()
}
