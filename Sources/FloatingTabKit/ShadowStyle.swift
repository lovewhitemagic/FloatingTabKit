import SwiftUI

public struct ShadowStyle {
    public let color: Color
    public let radius: CGFloat
    public let x: CGFloat
    public let y: CGFloat

    public init(color: Color = .black.opacity(0.1), radius: CGFloat = 8, x: CGFloat = 0, y: CGFloat = 2) {
        self.color = color
        self.radius = radius
        self.x = x
        self.y = y
    }

    public static let none = ShadowStyle(color: .clear, radius: 0, x: 0, y: 0)
    public static let `default` = ShadowStyle()
}