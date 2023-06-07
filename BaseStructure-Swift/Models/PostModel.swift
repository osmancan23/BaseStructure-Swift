//
//  PostModel.swift
//  BaseStructure-Swift
//
//  Created by Osmancan Akagündüz on 18.05.2023.
//

import Foundation

struct PostModel: Codable {
    let userID, id: Int
    let title, body: String

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, body
    }
}

