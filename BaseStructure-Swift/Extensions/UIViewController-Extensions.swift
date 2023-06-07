//
//  UIViewController-Extensions.swift
//  BaseStructure-Swift
//
//  Created by Osmancan Akagündüz on 19.05.2023.
//

import Foundation
import UIKit

extension UIViewController {
    
    static var identifier: String {
            return String(describing: self)
        }
    
   static func instantiate() -> Self {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(identifier: identifier) as! Self
    }
}
