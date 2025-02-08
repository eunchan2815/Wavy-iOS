//
//  SearchComponent.swift
//  Wavy
//
//  Created by dgsw30 on 2/8/25.
//

import SwiftUI

struct SearchComponent: View {
    @State private var tagList = ["#바다", "#캠핑명소", "#섬", "#피톤치드", "#해외", "#글램핑", "#도심", "#호수", "#영국", "#닭집", "#짭시티"]
    @State private var selectedTags: Set<String> = []
    @Binding var inputText: String
    let action: () -> Void

    let columns = [GridItem(.adaptive(minimum: 90), spacing: 10)]

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                TextField("키워드를 사용해 검색해주세요!", text: $inputText)
                    .hideKeyBoard()
                    .font(.regular(16))
                    .padding()
                    .frame(width: 360, height: 30)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(.search, lineWidth: 5)
                        HStack {
                            Spacer()
                            Rectangle()
                                .fill(.search)
                                .frame(width: 50, height: 50)
                                .overlay {
                                    Button {
                                        action()
                                    } label: {
                                        Image(icon: .searching)
                                            .resizable()
                                            .frame(width: 22, height: 22)
                                    }
                                    .onSubmit {
                                        action()
                                    }
                                }
                        }
                    }
            }
            .padding()
            
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(tagList, id: \.self) { tag in
                    Button {
                        inputText = tag
                        if selectedTags.contains(tag) {
                            selectedTags.remove(tag)
                        } else {
                            selectedTags.insert(tag)
                        }
                    } label: {
                        Text(tag)
                            .padding(.horizontal, 6)
                            .padding(.vertical, 6)
                            .background(selectedTags.contains(tag) ? Color.ontag : Color.clear)
                            .foregroundStyle(selectedTags.contains(tag) ? .white : .tag)
                            .overlay(
                                RoundedRectangle(cornerRadius: 50)
                                    .stroke(selectedTags.contains(tag) ? .ontag : .tag, lineWidth: 1)
                            )
                            .clipShape(RoundedRectangle(cornerRadius: 50))
                    }
                }
            }
            .padding(.horizontal, 20)
        }
    }
}

