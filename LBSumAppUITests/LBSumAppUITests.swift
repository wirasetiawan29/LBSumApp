//
//  LBSumAppUITests.swift
//  LBSumAppUITests
//
//  Created by Wira on 3/14/19.
//  Copyright © 2019 Wira Setiawan. All rights reserved.
//

import XCTest

class LBSumAppUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    func testSum() {
        
        let app = XCUIApplication()
        let button = app.buttons["2"]
        button.tap()
        app.buttons["4"].tap()
        app.buttons["3"].tap()
        app.buttons["6"].tap()
        app.buttons["8"].tap()
        button.tap()
        
    }
    
    func testMultiple() {
        
        let app = XCUIApplication()
        app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 1).buttons["x"].tap()
        let button = app.buttons["2"]
        button.tap()
        app.buttons["5"].tap()
        app.buttons["4"].tap()
        button.tap()
        
    }
    
    func testPrime() {
        let app = XCUIApplication()
        app.buttons["Prime"].tap()
        app.buttons["4"].tap()
        app.buttons["5"].tap()
        app.buttons["6"].tap()
    }
    
    func testFibonaci() {
        let app = XCUIApplication()
        app.buttons["Fibonaci"].tap()
        app.buttons["4"].tap()
        app.buttons["5"].tap()
        app.buttons["6"].tap()
    }
    
    func testAll() {
        let app = XCUIApplication()
        app.buttons["2"].tap()
        app.buttons["4"].tap()
        app.buttons["3"].tap()
        app.buttons["6"].tap()
        app.buttons["8"].tap()
        
        app.buttons["x"].tap()
        app.buttons["5"].tap()
        app.buttons["4"].tap()
        
        app.buttons["Prime"].tap()
        app.buttons["4"].tap()
        app.buttons["5"].tap()
        app.buttons["6"].tap()
        
        app.buttons["Fibonaci"].tap()
        app.buttons["4"].tap()
        app.buttons["5"].tap()
        app.buttons["6"].tap()
    }
    

}
