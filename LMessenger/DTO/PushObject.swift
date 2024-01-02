//
//  PushObject.swift
//  LMessenger
//
//  Created by 최안용 on 1/2/24.
//

import Foundation

struct PushObject: Encodable {
    var to: String
    var notification: NotificationObject
    
    struct NotificationObject: Encodable {
        var title: String
        var body: String
    }
}
