//
//  NavigationRoutingView.swift
//  LMessenger
//
//  Created by 최안용 on 12/27/23.
//

import SwiftUI

struct NavigationRoutingView: View {
    @EnvironmentObject var container: DIContainer
    @State var destination: NavigationDestination
    
    var body: some View {
        switch destination {
        case let .chat(chatRoomId, myUserId, otherUserId):
            ChatView(viewModel: .init(container: container, chatRoomId: chatRoomId, myUserId: myUserId, otherUserId: otherUserId))
        case let .search(userId):
            SearchView(viewModel: .init(userId: userId, container: container))
        }
    }
}
