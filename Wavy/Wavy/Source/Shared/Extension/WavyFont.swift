//
//  WavyFont.swift
//  Wavy
//
//  Created by dgsw30 on 2/8/25.
//

import SwiftUI

enum WavyFont: String {
    case light = "Pretendard-Light"
    case medium = "Pretendard-Medium"
    case bold = "Pretendard-Bold"
    case regular = "Pretendard-Regular"
}

extension Font {
    private static func Pretendard(weight: WavyFont, size: CGFloat) -> Self {
        Font.custom(weight.rawValue, size: size)
    }
    
    static func light(_ size: CGFloat) -> Self {
        Font.Pretendard(weight: .light, size: size)
    }
    
    static func medium(_ size: CGFloat) -> Self {
        Font.Pretendard(weight: .medium, size: size)
    }
    
    static func bold(_ size: CGFloat) -> Self {
        Font.Pretendard(weight: .bold, size: size)
    }
    
    static func regular(_ size: CGFloat) -> Self {
        Font.Pretendard(weight: .regular, size: size)
    }
}
