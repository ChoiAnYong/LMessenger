//
//  ChatRoomObject.swift
//  LMessenger
//
//  Created by 최안용 on 12/27/23.
//

import Foundation

struct ChatRoomObject: Codable {
    var chatRoomId: String
    var lastMessage: String?
    var otherUserName: String
    var otherUseId: String
}

extension ChatRoomObject {
    
    func toModel() -> ChatRoom {
        .init(chatRoomId: chatRoomId,
              lastMessage: lastMessage,
              otherUserName: otherUserName,
              otherUseId: otherUseId)
    }
}

extension ChatRoomObject {
    static var stub1: ChatRoomObject {
        .init(chatRoomId: "chatRoom1_id",
              otherUserName: "user2",
              otherUseId: "user2_id")
    }
}
