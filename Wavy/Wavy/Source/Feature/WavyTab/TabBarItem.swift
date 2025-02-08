//
//  TabBarItem.swift
//  Wavy
//
//  Created by dgsw30 on 2/8/25.
//
import SwiftUI

struct TabBarItem: View {
    let item: WavyTabItem
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button  {
            action()
        } label: {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 38, height: 38)
                .overlay {
                    VStack {
                        if isSelected {
                            item.clickIconView
                        } else {
                            item.iconView
                        }
                        Text(item.iconName)
                            .font(.regular(12))
                            .foregroundStyle(isSelected ? .sub : Color.none)
                    }
                }
        }
        .disabled(isSelected)
    }
}
