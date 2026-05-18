//
//  UserModel.swift
//  SwiftUIBasic
//
//  Created by 우채아 on 5/18/26.
//

import Foundation

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isChecked: Bool
}
