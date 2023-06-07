//
//  Route.swift
//  BaseStructure-Swift
//
//  Created by Osmancan Akagündüz on 19.05.2023.
//

import Foundation


enum Route {
    
    static let baseUrl  = "https://dummyjson.com"
    
    case fetchAllProducts
    case fetchPost(String)
    
    
    var value : String {
        
        switch self {
            case .fetchAllProducts : return "/products"
            
            case .fetchPost(let id) : return "/posts/\(id)"
        }
    }
    
}
