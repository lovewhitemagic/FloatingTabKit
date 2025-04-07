# FloatingTabKit
一个 SwiftUI 浮动标签栏组件，支持自定义背景、圆角、阴影，适配浅色/深色模式。可替代原生 `TabView`，让你的底部导航更灵动、更美观 ✨

![preview](assets/preview.png)

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
import SwiftUI
import FloatingTabKit

struct FloatingTabExample: View {
    var body: some View {
        FloatingTabScaffold(
            tabs: [
                .init(id: 0, icon: "house", content: AnyView(HomeView())),
                .init(id: 1, icon: "star", content: AnyView(FavoriteView())),
                .init(id: 2, icon: "gearshape", content: AnyView(SettingsView())),
               .init(id: 3, icon: "person.crop.circle", content: AnyView(ProfileView()))
            ],
            initialTab: 0,
            background: AnyShapeStyle(.white),
            cornerRadius: 28,
            shadow: ShadowStyle(
                color: .black.opacity(0.1),
                radius: 10,
                x: 0,
                y: 5
            )
        )
    }
}

struct HomeView: View {
    var body: some View {
        NavigationStack {
            List(1...10, id: \.self) { i in
                Text("🏠 Home Item \(i)")
            }
            .navigationTitle("首页")
        }
    }
}

struct FavoriteView: View {
    var body: some View {
        NavigationStack {
            List(1...10, id: \.self) { i in
                Text("⭐️ Favorite Item \(i)")
            }
            .navigationTitle("收藏")
        }
    }
}

struct SettingsView: View {
    var body: some View {
        NavigationStack {
            List(1...10, id: \.self) { i in
                Text("⚙️ Setting Item \(i)")
            }
            .navigationTitle("设置")
        }
    }
}

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "person.crop.circle")
                    .font(.system(size: 80))
                    .padding()

                Text("这是个人中心")
                    .font(.title)
            }
            .navigationTitle("我的")
        }
    }
}

#Preview {
    FloatingTabExample()
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