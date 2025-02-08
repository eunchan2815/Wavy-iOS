//
//  TextFieldCase.swift
//  Wavy
//
//  Created by dgsw30 on 2/8/25.
//

import SwiftUI

enum TextFieldCase: CaseIterable {
    case human
    case lock
    case home
    
    var icon: Image {
        switch self {
        case .human:
            return Image(icon: .human)
        case .lock:
            return Image(icon: .lock)
        case .home:
            return Image(icon: .home)
        }
    }
}
