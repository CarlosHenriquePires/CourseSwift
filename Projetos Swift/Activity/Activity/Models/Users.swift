//
//  Users.swift
//  Activity
//
//  Created by Aloc SP11704 on 21/03/22.
//

import Foundation

// MARK: - Users
struct Users: Codable {
    let id: Int
    let name: String
    let photo: String
    let company: Company
}

// MARK: - Company
struct Company: Codable {
    let name: String
}
