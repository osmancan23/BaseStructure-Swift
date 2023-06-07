//
//  ViewController.swift
//  BaseStructure-Swift
//
//  Created by Osmancan Akagündüz on 18.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let networkManager = NetworkManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        networkManager.fetchProducts { productlist in
            print(productlist.products.first)
        } onFailed: { error in
            print(error)
        }





    }


}

