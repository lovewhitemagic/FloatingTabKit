import SwiftUI

@resultBuilder
public struct FloatingTabBuilder {
    public static func buildBlock(_ components: FloatingTab...) -> [FloatingTab] {
        components
    }
}

public struct FloatingTabScaffold: View {
    private let tabs: [FloatingTab]
    private let initialTab: Int
    private let background: AnyShapeStyle
    private let cornerRadius: CGFloat
    private let shadow: ShadowStyle

    @State private var selectedTab: Int

    public init(
        initialTab: Int = 0,
        background: AnyShapeStyle = AnyShapeStyle(Color.white),
        cornerRadius: CGFloat = 22,
        shadow: ShadowStyle = .default,
        @FloatingTabBuilder content: () -> [FloatingTab]
    ) {
        self.tabs = content()
        self.initialTab = initialTab
        self.background = background
        self.cornerRadius = cornerRadius
        self.shadow = shadow
        self._selectedTab = State(initialValue: initialTab)
    }

    public var body: some View {
        ZStack {
            tabs[selectedTab].content

            VStack {
                Spacer()
                HStack(spacing: 20) {
                    ForEach(Array(tabs.enumerated()), id: \.offset) { index, tab in
                        FloatingTabButton(
                            icon: tab.icon,
                            isSelected: selectedTab == index,
                            action: { selectedTab = index }
                        )
                    }
                }
                .padding(.vertical, 12)
                .padding(.horizontal, 20) // 左右固定边距
                .background(background)
                .cornerRadius(cornerRadius)
                .shadow(
                    color: shadow.color,
                    radius: shadow.radius,
                    x: shadow.x,
                    y: shadow.y
                )
            }
        }
    }
}

