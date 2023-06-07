//
//  NetworkManager.swift
//  BaseStructure-Swift
//
//  Created by Osmancan Akagündüz on 18.05.2023.
//

import Foundation
import Alamofire

protocol INetworkManager {
    
    func fetchPost(postId: String, onSuccess: @escaping (PostModel) -> Void , onFailed: @escaping (String) -> Void)
    
    func fetchProducts(onSuccess: @escaping (ResultModel) -> Void , onFailed: @escaping (String) -> Void)


}

class NetworkManager : INetworkManager {
    func fetchProducts(onSuccess: @escaping (ResultModel) -> Void, onFailed: @escaping (String) -> Void) {
        request(onSuccess: onSuccess, onFailed: onFailed, route: .fetchAllProducts, method: .get)
    }
    
  
    func fetchPost(postId: String,onSuccess: @escaping (PostModel) -> Void, onFailed: @escaping (String) -> Void) {
        request(onSuccess: onSuccess, onFailed: onFailed, route: .fetchPost(postId), method: .get)
    }
    
    
   
        
        
    private func request <T:Codable>(onSuccess: @escaping (T) -> Void , onFailed: @escaping (String) -> Void, route: Route, method:HTTPMethod, parameters:Parameters?=nil,headers:HTTPHeaders?=nil){
            let urlString = Route.baseUrl + route.value
                    
            guard let url = urlString.asUrl else { return  }
            
        
            AF.request(url,method: method,parameters: parameters,headers: headers).responseDecodable(of:T.self) { result in
                
                guard let value = result.value else{
                    onFailed(result.error!.localizedDescription)
                    return
                }
                
                onSuccess(value)
        
            }
    }
    
   
    
    
    
    

    
    
    
    
}
