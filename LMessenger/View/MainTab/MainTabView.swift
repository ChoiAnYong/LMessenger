//
//  MainTabView.swift
//  LMessenger
//
//  Created by 최안용 on 12/20/23.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab: MainTabType = .home
    
    var body: some View {
        TabView(selection: $selectedTab) {
            ForEach(MainTabType.allCases, id: \.self) { tab in
                Group {
                    switch tab {
                    case .home:
                        HomeView(viewModel: .init())
                    case .chat:
                        ChatListView()
                    case .phone:
                        Color.BlackFix
                    }
                }
                .tabItem {
                    Label(tab.title, image: tab.imageName(selected: selectedTab == tab))
                }
                .tag(tab)
            }
        }
        .tint(.BkText)
    }
    
    init() {
        UITabBar.appearance().unselectedItemTintColor = UIColor(Color.BkText)
    }
}

#Preview {
    MainTabView()
}
