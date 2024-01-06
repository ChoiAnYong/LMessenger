//
//  AppearanceController.swift
//  LMessenger
//
//  Created by 최안용 on 1/5/24.
//

import Foundation
import Combine

protocol AppearanceControllerable {
    var appearance: AppearnceType { get set }
    
    func changeAppearance(_ willBeAppearance: AppearnceType?)
}

class AppearanceController: AppearanceControllerable, ObservableObjectSettable {
    
    var objectWillChange: ObservableObjectPublisher?
    
    var appearance: AppearnceType = .automatic {
        didSet {
            objectWillChange?.send()
        }
    }
    
    func changeAppearance(_ willBeAppearance: AppearnceType?) {
        appearance = willBeAppearance ?? .automatic
    }
}

