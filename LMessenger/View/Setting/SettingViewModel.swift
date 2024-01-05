//
//  SettingViewModel.swift
//  LMessenger
//
//  Created by 최안용 on 1/5/24.
//

import Foundation

class SettingViewModel: ObservableObject {

    @Published var sectionItems: [SectionItem] = []
    
    init() {
        self.sectionItems = [
            .init(label: "모드설정", settings: AppearnceType.allCases.map { .init(item: $0) })
        ]
    }
}
