//
//  AuthenticatedView.swift
//  LMessenger
//
//  Created by 최안용 on 12/9/23.
//

import SwiftUI

struct AuthenticatedView: View {
    @StateObject var authViewModel: AuthenticationViewModel
    @StateObject var navigationRouter: NavigationRouter
    @StateObject var searchDataController: SearchDataController
    @StateObject var appearanceController: AppearanceController
    
    var body: some View {
        VStack {
            switch authViewModel.authenticationState {
            case .unauthenticated:
                LoginIntroView()
                    .environmentObject(authViewModel)
            case .authenticated:
                MainTabView()
                    .environment(\.managedObjectContext, searchDataController.persistantContainer.viewContext)
                    .environmentObject(authViewModel)
                    .environmentObject(navigationRouter)
                    .environmentObject(appearanceController)
                    .onAppear {
                        authViewModel.send(action: .requestPushNotification)
                    }
            }
        }
        .onAppear {
            authViewModel.send(action: .checkAuthenticationState)
        }
        .preferredColorScheme(appearanceController.appearance.colorScheme)
    }
}
 
#Preview {
    AuthenticatedView(authViewModel: .init(container: .init(services: StubService())), 
                      navigationRouter: .init(),
                      searchDataController: .init(),
                      appearanceController: .init(0))
}
