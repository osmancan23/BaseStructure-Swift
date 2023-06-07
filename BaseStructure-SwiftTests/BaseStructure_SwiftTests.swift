//
//  BaseStructure_SwiftTests.swift
//  BaseStructure-SwiftTests
//
//  Created by Osmancan Akagündüz on 18.05.2023.
//

import XCTest
@testable import BaseStructure_Swift

final class BaseStructure_SwiftTests: XCTestCase {

  let networkManager = NetworkManager()
    
    func testFetchAllPosts()  {
        networkManager.fetchPosts { postList in
            XCTAssertNotNil(postList)
        } onFailed: { error in
            XCTAssert(true,error)
        }

    }

}
