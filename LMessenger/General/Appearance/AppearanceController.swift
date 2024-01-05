//
//  AppearanceController.swift
//  LMessenger
//
//  Created by 최안용 on 1/5/24.
//

import Foundation

class AppearanceController: ObservableObject {
    
    @Published var appearance: AppearnceType
    
    init(_ appearanceValue: Int) {
        self.appearance = AppearnceType(rawValue: appearanceValue) ?? .automatic
    }
    
    func changeAppearance(_ willBeAppearance: AppearnceType) {
        appearance = willBeAppearance
    }
}
