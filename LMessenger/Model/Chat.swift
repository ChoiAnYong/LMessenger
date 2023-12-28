//
//  Chat.swift
//  LMessenger
//
//  Created by 최안용 on 12/28/23.
//

import Foundation

struct Chat: Hashable, Identifiable {
    var chatId: String
    var userId: String
    var message: String?
    var photoURL: String?
    var date: Date
    var id: String { chatId }
}
