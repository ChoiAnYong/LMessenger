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
        VStack {
            switch authViewModel.authenticationState {
            case .unauthenticated:
                LoginIntroView()
                    .environmentObject(authViewModel)
            case .authenticated:
                MainTabView()
                    .environmentObject(authViewModel)
            }
        }
        .onAppear {
            authViewModel.send(action: .checkAuthenticationState)
        }
    }
}
 
#Preview {
    AuthenticatedView(authViewModel: .init(container: .init(services: StubService())))
}
