//
//  LBSumAppTests.swift
//  LBSumAppTests
//
//  Created by Wira on 3/14/19.
//  Copyright © 2019 Wira Setiawan. All rights reserved.
//

import XCTest
@testable import LBSumApp

class LBSumAppTests: XCTestCase {
    
    var controller: SumController!

    override func setUp() {
        let vcLogin: ViewController = ViewController()
        controller = SumController.init(viewController: vcLogin)
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    // MARK: Sum test case
    func testPlusCase1() {
        let a = 5
        let b = 3
        let result = controller?.sum(a: a, b: b)
        XCTAssertEqual(result, 8)
    }
    
    func testPlusCase2() {
        let a = 10
        let b = 1
        let result = controller?.sum(a: a, b: b)
        XCTAssertNotEqual(result, 3)
    }
    
    func testPlusCase3() {
        let a = -3
        let b = 4
        let result = controller?.sum(a: a, b: b)
        XCTAssertEqual(result, 1)
    }
    
    // MARK: Multiple test case
    func testMultipleCase1() {
        let a = 5
        let b = 3
        let result = controller?.multiple(a: a, b: b)
        XCTAssertEqual(result, 15)
    }
    
    func testMultipleCase2() {
        let a = 10
        let b = 3
        let result = controller?.multiple(a: a, b: b)
        XCTAssertNotEqual(result, 20)
    }
    
    func testMultipleCase3() {
        let a = -3
        let b = 4
        let result = controller?.multiple(a: a, b: b)
        XCTAssertEqual(result, -12)
    }
    
    // MARK: Prime test case
    func testPrimeCase1(){
        let n = 4
        let result = controller.prime(n: n)
        XCTAssertEqual(result, [2,3,5,7])
    }
    
    func testPrimeCase2(){
        let n = 5
        let result = controller.prime(n: n)
        XCTAssertNotEqual(result, [0,2,3,5,7,9])
    }
    
    func testPrimeCase3(){
        let n = -4
        let result = controller.prime(n: n)
        XCTAssertEqual(result, [])
    }
    
    // MARK: Fibonaci test case
    func testFibCase1(){
        let n = 4
        let result = controller.fibonacci(n: n)
        XCTAssertEqual(result, [0,1,1,2])
    }
    
    func testFibCase2(){
        let n = 3
        let result = controller.fibonacci(n: n)
        XCTAssertNotEqual(result, [0,1,2])
    }
    
    func testFibCase4(){
        let n = -4
        let result = controller.fibonacci(n: n)
        XCTAssertEqual(result, [])
    }
    
}
