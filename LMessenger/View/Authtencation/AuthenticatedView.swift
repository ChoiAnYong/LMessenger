//
//  AuthenticatedView.swift
//  LMessenger
//
//  Created by 최안용 on 12/9/23.
//

import SwiftUI

struct AuthenticatedView: View {
    @StateObject var authViewModel: AuthenticationViewModel
    
    var body: some View {
        switch authViewModel.authenticationState {
        case .unauthenticated:
            LoginIntroView()
        case .authenticated:
            MainTabView()
        }
    }
}
 
#Preview {
    AuthenticatedView(authViewModel: .init(container: .init(services: StubService())))
}
