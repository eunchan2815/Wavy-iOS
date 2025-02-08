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
    case home = "HomeIcon"
    
    case homeIcon = "Home"
    case searchIcon = "Search"
    case writeIcon = "Write"
    case myIcon = "My"
    case mapIcon = "Map"
    
    case clickHome = "ClickHome"
    case clickSearch = "ClickSearch"
    case clickWrite = "ClickWrite"
    case clickMy = "ClickMy"
    case clickmap = "ClickMap"
    
    case searching = "Searching"
    case healing = "Healing"
    case healing1 = "Healing1"
}

extension Image {
    init(icon: WavyIcon) {
        self = Image(icon.rawValue)
    }
}
