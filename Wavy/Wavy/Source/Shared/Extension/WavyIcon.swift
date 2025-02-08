//
//  WavyIcon.swift
//  Wavy
//
//  Created by dgsw30 on 2/8/25.
//

import SwiftUI

enum WavyIcon: String {
    case mainIcon = "MainIcon"
    case subIcon = "SubIcon"
    case background = "Background"
    
    case human = "Human"
    case lock = "Lock"
    case home = "Home"
}

extension Image {
    init(icon: WavyIcon) {
        self = Image(icon.rawValue)
    }
}
