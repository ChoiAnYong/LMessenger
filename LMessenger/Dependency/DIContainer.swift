//
//  DIContainer.swift
//  LMessenger
//
//  Created by 최안용 on 12/9/23.
//

import Foundation

class DIContainer: ObservableObject {
    var services: ServiceType
    var searchDataController: DataControllable
    var navigationRouter: NavigationRoutable & ObservableObjectSettable
    var appearanceController: AppearanceController & ObservableObjectSettable
    
    init(services: ServiceType,
         searchDataController: DataControllable = SearchDataController(),
         navigationRouter: NavigationRoutable & ObservableObjectSettable = NavigationRouter(),
         appearanceController: AppearanceController & ObservableObjectSettable = AppearanceController()) {
        self.services = services
        self.searchDataController = searchDataController
        self.navigationRouter = navigationRouter
        self.appearanceController = appearanceController
        
        self.navigationRouter.setObjectWillChange(objectWillChange)
        self.appearanceController.setObjectWillChange(objectWillChange)
    }
}

extension DIContainer {
    static var stub: DIContainer {
        .init(services: StubService())
    }
}
