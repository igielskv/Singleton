//
//  SingletonTests.swift
//  SingletonTests
//
//  Created by Manoli on 28/10/2020.
//

import XCTest
@testable import Singleton

class SingletonTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testAppSettingsCreation() {
        // let newAppSettings = AppSettings()
        // 'AppSettings' initializer is inaccessible due to 'private' protection level
    }
    
    func testConcurrentUsage() {
        let concurrentQueue = DispatchQueue(label: "concurrentQueue", attributes: .concurrent)
        
        let expect = expectation(description: "Using AppSettings.shared from multiple threads shall succeed")
        
        let callCount = 100
        
        for callIndex in 1 ... callCount {
            concurrentQueue.async {
                AppSettings.shared.set(value: callIndex, forKey: String(callIndex))
            }
        }
        
        while AppSettings.shared.int(forKey: String(callCount)) != callCount {
            
        }
        
        expect.fulfill()
        
        waitForExpectations(timeout: 5) { (error) in
            XCTAssertNil(error, "Test expectation failed")
        }
    }
}
