//
//  rssNasaTests.swift
//  rssNasaTests
//
//  Created by Pablo Vélez  on 27/11/2018.
//  Copyright © 2018 Denis. All rights reserved.
//

import XCTest
@testable import rssNasa

import Alamofire
import XMLMapper

class rssNasaTests: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
     
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAPICall() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
      
        let url = URL(string: "https://www.nasa.gov/rss/dyn/lg_image_of_the_day.rss")!
        Alamofire.request(url, method: .get).responseXMLObject { (response: DataResponse<RSS>) in
            
            self.testHandleListRSS(response.result)
        }
      
    }
    
    func testHandleListRSS(_ result: Result<RSS>) {
        switch result {
        case .success(let listRSSObject):
             XCTAssertNotNil(listRSSObject)
            
        case .failure(let error):
           XCTAssertNil(error)
        }
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
