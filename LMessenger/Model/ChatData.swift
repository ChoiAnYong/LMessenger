//
//  ChatData.swift
//  LMessenger
//
//  Created by 최안용 on 12/28/23.
//

import Foundation

struct ChatData: Hashable, Identifiable {
    var dateStr: String
    var chats: [Chat]
    var id: String { dateStr }
}
