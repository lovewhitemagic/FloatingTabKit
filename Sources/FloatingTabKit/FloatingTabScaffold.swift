import SwiftUI

@available(iOS 16.0, *)
public struct FloatingTabScaffold: View {
    private let tabs: [FloatingTabItem]
    private let background: AnyShapeStyle
    private let cornerRadius: CGFloat
    private let shadow: ShadowStyle

    @State private var selectedTab: Int

    public init(
        tabs: [FloatingTabItem],
        initialTab: Int = 0,
        background: AnyShapeStyle = AnyShapeStyle(.ultraThinMaterial),
        cornerRadius: CGFloat = 22,
        shadow: ShadowStyle = .default
    ) {
        self.tabs = tabs
        self._selectedTab = State(initialValue: initialTab)
        self.background = background
        self.cornerRadius = cornerRadius
        self.shadow = shadow
    }

    public var body: some View {
        ZStack {
            TabView(selection: $selectedTab) {
                ForEach(tabs) { tab in
                    tab.content
                        .tag(tab.id)
                        .toolbar(.hidden, for: .tabBar)
                }
            }
            .toolbar(.hidden, for: .tabBar)

            VStack {
                Spacer()
                HStack {
                    ForEach(tabs) { tab in
                        FloatingTabButton(
                            icon: tab.icon,
                            isSelected: selectedTab == tab.id
                        ) {
                            selectedTab = tab.id
                        }
                    }
                }
                .padding(.vertical, 8)
                .background(background)
                .cornerRadius(cornerRadius)
                .shadow(
                    color: shadow.color,
                    radius: shadow.radius,
                    x: shadow.x,
                    y: shadow.y
                )
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 16)
            }
        }
    }
}