//
//  User.swift
//  AppNetworking
//
//  Created by Aloc SP11704 on 18/03/22.
//

import Foundation

//codable serialization
// encodable e codable

struct User: Codable {
    let id: Int
    let name, username, email:String
    let address: Address?
    let phone: String
    
}
struct Address: Codable {
    let street, city, zipcode:String?
}

struct Company: Codable {
    let name: String
}
