import SwiftUI

public struct FloatingTabItem: Identifiable {
    public let id: Int
    public let icon: String
    public let content: AnyView

    public init(id: Int, icon: String, content: AnyView) {
        self.id = id
        self.icon = icon
        self.content = content
    }
}