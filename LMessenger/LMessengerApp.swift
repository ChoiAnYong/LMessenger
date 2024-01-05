 //
//  LMessengerApp.swift
//  LMessenger
//
//  Created by 최안용 on 12/9/23.
//

import SwiftUI

@main
struct LMessengerApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @AppStorage(AppStorageType.Appearance) var appearanceValue: Int = UserDefaults.standard.integer(forKey: AppStorageType.Appearance)
    @StateObject var container: DIContainer = .init(services: Services())
    var body: some Scene {
        WindowGroup {
            AuthenticatedView(authViewModel: .init(container: container),
                              navigationRouter: .init(),
                              searchDataController: .init(),
                              appearanceController: .init(appearanceValue))
                .environmentObject(container)
        }
    }
}
