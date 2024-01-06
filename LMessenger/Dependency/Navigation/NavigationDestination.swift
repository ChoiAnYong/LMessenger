//
//  NavigationDestination.swift
//  LMessenger
//
//  Created by 최안용 on 12/27/23.
//

import Foundation

enum NavigationDestination: Hashable {
    case chat(chatRoomId: String, myUserId: String, otherUserId: String )
    case search(userId: String)
}

