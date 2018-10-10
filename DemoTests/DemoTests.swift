//
//  DemoTests.swift
//  DemoTests
//
//  Created by COUTO, TIAGO [AG-Contractor/1000] on 10/10/18.
//  Copyright © 2018 COUTO, TIAGO [AG-Contractor/1000]. All rights reserved.
//

import XCTest
@testable import Demo

class DemoTests: XCTestCase {

    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        viewController = ViewController()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func test_numberOfVowels() {
        let input = "Dominik"
        let expectedOutput = 3
        let numberOfVowels = viewController.numberOfVowels(in: input)
        
        XCTAssertEqual(numberOfVowels, expectedOutput, "Should find 3 vowels in Dominik")
        
    }
    
    func test_makeHeadline() {
        let input = "this is A test headline"
        let expectedOutput = "This Is A Test Headline"
        let headline = viewController.makeHeadline(from: input)
        
        XCTAssertEqual(headline, expectedOutput)
    }
    
    func test_makeHeadline2() {
        let input = "Here is another example"
        let expectedOutput = "Here Is Another Example"
        let headline = viewController.makeHeadline(from: input)
        
        XCTAssertEqual(headline, expectedOutput)
    }

}
