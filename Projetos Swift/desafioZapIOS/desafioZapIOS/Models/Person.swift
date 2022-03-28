//
//  Person.swift
//  desafioZapIOS
//
//  Created by Aloc SP11704 on 28/03/22.
//

import Foundation

// MARK: - Struct Person Model
struct Person: Codable {
    let id: Int
    let name: String
    let picture: String
    let latestTimestamp, lastChat: String

    enum CodingKeys: String, CodingKey {
        case id, name, picture
        case latestTimestamp = "latest_timestamp"
        case lastChat
    }
}

