import SwiftUI

struct FloatingTabButton: View {
    let icon: String
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Image(systemName: icon)
                .font(.title2)
                .symbolVariant(isSelected ? .fill : .none)
                .frame(width: 35, height: 35)
                .foregroundStyle(isSelected ? .black : .gray)
        }
    }
}
