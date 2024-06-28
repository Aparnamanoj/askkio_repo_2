import SwiftUI
import Combine

class TabBarManager: ObservableObject {
    @Published var isHidden: Bool = false
}

struct TabBarVisibilityKey: EnvironmentKey {
    static let defaultValue: TabBarManager = TabBarManager()
}

extension EnvironmentValues {
    var tabBarManager: TabBarManager {
        get { self[TabBarVisibilityKey.self] }
        set { self[TabBarVisibilityKey.self] = newValue }
    }
}

extension View {
    func tabBarManager(_ tabBarManager: TabBarManager) -> some View {
        self.environment(\.tabBarManager, tabBarManager)
    }
}
