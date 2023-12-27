//
//  NavigationRoutingView.swift
//  LMessenger
//
//  Created by 최안용 on 12/27/23.
//

import SwiftUI

struct NavigationRoutingView: View {
    @State var destination: NavigationDestination
    
    var body: some View {
        switch destination {
        case .chat:
            ChatView()
        case .search:
            SearchView()
        }
    }
}
