//
//  ChatObject.swift
//  LMessenger
//
//  Created by 최안용 on 12/28/23.
//

import Foundation

struct ChatObject: Codable {
    var chatId: String
    var userId: String
    var message: String?
    var photoURL: String?
    var date: TimeInterval
}

extension ChatObject {
    func toModel() -> Chat {
        .init(chatId: chatId,
              userId: userId,
              message: message,
              photoURL: photoURL,
              date: Date(timeIntervalSince1970: date))
    }
}
