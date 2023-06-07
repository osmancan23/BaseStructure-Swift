//
//  String-Extensions.swift
//  BaseStructure-Swift
//
//  Created by Osmancan Akagündüz on 19.05.2023.
//

import Foundation

extension String {
    
    var asUrl : URL? {
        return URL(string: self)
    }
}
