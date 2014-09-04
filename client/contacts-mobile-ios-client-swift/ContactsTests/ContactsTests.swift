//
//  ContactsTests.swift
//  ContactsTests
//
//  Created by Christos Vasilakis on 7/24/14.
//  Copyright (c) 2014 Christos Vasilakis. All rights reserved.
//

import UIKit
import XCTest

class ContactsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInfoPlistUnifiedPushServerURL() {
        XCTAssertEqual("http://host:port/ag-push", NSBundle.mainBundle().objectForInfoDictionaryKey("UnifiedPushServerURL")! as String)
    }

    func testInfoPlistUnifiedVariantID() {
        XCTAssertEqual("Variant ID from UnifiedPush Server", NSBundle.mainBundle().objectForInfoDictionaryKey("VariantID")! as String)
    }

    func testInfoPlistUnifiedVariantSecret() {
        XCTAssertEqual("Variant Secret from UnifiedPush Server", NSBundle.mainBundle().objectForInfoDictionaryKey("VariantSecret")! as String)
    }

    func testInfoPlistBackendURL() {
        XCTAssertEqual("http://host:port/jboss-contacts-mobile-picketlink-secured", NSBundle.mainBundle().objectForInfoDictionaryKey("BackendURL")! as String)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
