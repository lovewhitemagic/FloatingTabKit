import SwiftUI

public struct FloatingTab: Identifiable {
    public let id: String
    public let icon: String
    public let content: AnyView

    public init(_ icon: String, @ViewBuilder content: () -> some View) {
        self.icon = icon
        self.id = icon
        self.content = AnyView(content()) // 👈 自动封装为 AnyView
    }
}


