//
//  HomeViewModel.swift
//  LMessenger
//
//  Created by 최안용 on 12/22/23.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var myUser: User?
    @Published var users: [User] = [.stub1, .stub2]
}
