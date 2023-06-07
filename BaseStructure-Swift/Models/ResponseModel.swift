//
//  ResponseModel.swift
//  BaseStructure-Swift
//
//  Created by Osmancan Akagündüz on 19.05.2023.
//

import Foundation

struct ResultModel: Codable {
    let products: [Product]
    let total, skip, limit: Int
}

// MARK: - Product
struct Product: Codable {
    let id: Int
    let title, description: String
    let price: Int
    let discountPercentage, rating: Double
    let stock: Int
    let brand, category: String
    let thumbnail: String
    let images: [String]
}
