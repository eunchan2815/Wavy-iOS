import SwiftUI

struct SpoonView: View {
    var body: some View {
        VStack {
            Component(date: "2025.02.09", title: "부산해수욕장", string1: "여유", string2: "행복", star: 5)
            Component(date: "2025.02.09", title: "해운대", string1: "신나🤩", string2: "행복", star: 3)
            Component(date: "2025.02.09", title: "앱잼", string1: "여유", string2: "ㅎㅇ", star: 3)
            Component(date: "2025.02.09", title: "칠가이", string1: "칠함", string2: "ㅋㅋ", star: 0)
            
        }
        .WavyBackButton()
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarTitle("나의여행후기")
    }
}

#Preview {
    SpoonView()
}
