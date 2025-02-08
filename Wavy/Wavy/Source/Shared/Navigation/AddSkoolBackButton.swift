import SwiftUI

struct AddWavyBackButton: ViewModifier {
    @Environment(\.dismiss) private var dismiss
    
    func body(content: Content) -> some View {
        content
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        HStack {
                            Image(systemName: "chevron.left")
                                .font(.regular(20))
                                .foregroundStyle(.black)
                        }
                    }
                }
            }
    }
}

extension View {
    func WavyBackButton(
    ) -> some View {
        self.modifier(AddWavyBackButton())
    }
}
