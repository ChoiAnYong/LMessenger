//
//  DIContainer.swift
//  LMessenger
//
//  Created by 최안용 on 12/9/23.
//

import Foundation

class DIContainer: ObservableObject {
    var services: ServiceType
    
    init(services: ServiceType) {
        self.services = services
    }
}
