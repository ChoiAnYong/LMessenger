//
//  DBError.swift
//  LMessenger
//
//  Created by 최안용 on 12/22/23.
//

import Foundation

enum DBError: Error {
    case error(Error)
    case emptyValue
    case invalidatedType
}
