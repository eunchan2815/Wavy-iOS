//
//  WavyTabView.swift
//  Wavy
//
//  Created by dgsw30 on 2/8/25.
//

import SwiftUI

public struct WavyTabView<Content: View>: View {
    @Binding var selection: WavyTabItem
    let content: Content
    var barOpacity: CGFloat = 1.0
    
    public init(
        selection: Binding<WavyTabItem>,
        @ViewBuilder content: () -> Content
    ) {
        self._selection = selection
        self.content = content()
    }
    
    
    public var body: some View {
        VStack(spacing: 0) {
            content
                .padding(.bottom, 120)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea(edges: .top)
            
            if barOpacity > 0 {
                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: 1)
                    .foregroundStyle(Color.init(uiColor: .systemGray6))
                VStack {
                    HStack(spacing: 35) {
                        ForEach(WavyTabItem.allCases, id: \.rawValue) { item in
                            TabBarItem(item: item, isSelected: item == selection) {
                                selection = item
                            }
                        }
                    }
                    .padding(.horizontal, 30)
                }
                .frame(width: 393, height: 82)
                .foregroundStyle(Color.white)
                .padding(.bottom, 20)
                .padding(.top, 0)
                .ignoresSafeArea(edges: .bottom)
                .opacity(barOpacity)
            }  
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}
