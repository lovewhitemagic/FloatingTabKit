# FloatingTabKit
一个 SwiftUI 浮动标签栏组件，支持自定义背景、圆角、阴影，适配浅色/深色模式。可替代原生 `TabView`，让你的底部导航更灵动、更美观 ✨


## ✨ 功能亮点

- 🚀 支持任意数量的 Tab 页面
- 🎨 自定义背景材质（颜色 / Material）
- 🟦 圆角 / 阴影样式可配置
- 🌙 适配深色模式
- ✅ 默认高亮图标（SF Symbol `.fill` 样式）
- 🔧 支持搭配 `AppThemeKit` 使用，实现主题统一



## 📦 安装方式（使用 Swift Package Manager）

1. 打开 Xcode，点击菜单：`File > Add Packages...`
2. 粘贴仓库地址：

## 🧪 使用示例

```swift
import FloatingTabKit
import SwiftUI

struct FloatingTabDemoView: View {
    var body: some View {
        FloatingTabScaffold(
            tabs: [
                .init(id: 0, icon: "house", content: AnyView(HomeView())),
                .init(id: 1, icon: "star", content: AnyView(FavoriteView())),
                .init(id: 2, icon: "gearshape", content: AnyView(SettingsView()))
            ],
            initialTab: 0,
            background: AnyShapeStyle(.ultraThinMaterial),
            cornerRadius: 28,
            shadow: ShadowStyle(
                color: .black.opacity(0.1),
                radius: 10,
                x: 0,
                y: 4
            )
        )
    }
}
```

## 🧱 参数说明

| 参数名        | 类型              | 描述                                             |
|---------------|-------------------|--------------------------------------------------|
| `tabs`        | `[FloatingTabItem]` | 每个 tab 的内容、图标与 ID                      |
| `initialTab`  | `Int`              | 默认选中 tab 的 ID                               |
| `background`  | `AnyShapeStyle`    | 底部栏背景样式，支持 `.material` 或 `Color`     |
| `cornerRadius`| `CGFloat`          | 底部栏圆角大小                                   |
| `shadow`      | `ShadowStyle`      | 控制阴影颜色、模糊半径、偏移量等                |

### 🧑‍💻 作者
由 @lovewhitemagic 开发
欢迎 PR 和 Star 🌟