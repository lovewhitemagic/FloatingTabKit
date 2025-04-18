import SwiftUI
import FloatingTabKit

struct FloatingTabExample: View {
    var body: some View {
        FloatingTabScaffold {
            FloatingTab("house") { HomeView() }
            FloatingTab("star") { FavoriteView() }
            FloatingTab("gearshape") { SettingsView() }
        }
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
