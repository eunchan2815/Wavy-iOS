//
//  ProgressBar.swift
//  Wavy
//
//  Created by dgsw30 on 2/8/25.
//


import SwiftUI

struct ProgressBar: View {
    enum ProgressColor {
        case one
        case two
        case three
        
        var fillcolor: Int {
            switch self {
            case .one:
                return 1
            case .two:
                return 2
            case .three:
                return 3
            }
        }
    }
    var progress: ProgressColor
    var body: some View {
        HStack {
            ForEach(0..<3) { index in
                Circle()
                    .fill(index < progress.fillcolor ? Color.field : Color.progress)
                    .frame(width: 12, height: 12)
            }
        }
    }
}
