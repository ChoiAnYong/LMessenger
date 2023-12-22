//
//  Services.swift
//  LMessenger
//
//  Created by 최안용 on 12/9/23.
//

import Foundation

protocol ServiceType {
    var authService: AuthenticationServiceType { get set }
}

class Services: ServiceType {
    var authService: AuthenticationServiceType
    
    init() {
        self.authService = AuthenticationService()
    }
}

class StubService: ServiceType {
    var authService: AuthenticationServiceType  = StubAuthenticationService()
}
