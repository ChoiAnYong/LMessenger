//
//  HomeModalDestination.swift
//  LMessenger
//
//  Created by 최안용 on 12/24/23.
//

import Foundation

enum HomeModalDestination: Hashable, Identifiable {
    case myProfile
    case otherProfile(String)
    case setting
    
    var id: Int {
        hashValue
    }
}
