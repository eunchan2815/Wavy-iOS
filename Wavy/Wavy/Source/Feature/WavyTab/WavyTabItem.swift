import SwiftUI

public enum WavyTabItem: Int, CaseIterable {
    case search = 0, write, home, map, my
    
    var icon: Image {
        switch self {
        case .search: return Image(icon: .searchIcon)
        case .write: return Image(icon: .writeIcon)
        case .home: return Image(icon: .home)
        case .map: return Image(icon: .mapIcon)
        case .my: return Image(icon: .myIcon)
        }
    }
    
    var clickIcon: Image {
        switch self {
        case .search: return Image(icon: .clickSearch)
        case .write: return Image(icon: .clickWrite)
        case .home: return Image(icon: .clickHome)
        case .map: return Image(icon: .clickmap)
        case .my: return Image(icon: .clickMy)
        }
    }
    
    var iconName: String {
        switch self {
        case .home:
            return "홈"
        case .search:
            return "검색"
        case .write:
            return "기록"
        case .map:
            return "힐링"
        case .my:
            return "MY"  
        }
    }
    
    var iconView: some View {
        icon.resizable().frame(width: iconSize.width, height: iconSize.height)
    }

    var clickIconView: some View {
        clickIcon.resizable().frame(width: iconSize.width, height: iconSize.height)
    }

    private var iconSize: CGSize {
        switch self {
        case .home: return CGSize(width: 34, height: 29)
        case .write: return CGSize(width: 30, height: 29)
        case .map: return CGSize(width: 31, height: 29)
        default: return CGSize(width: 29, height: 29)
        }
    }
}
