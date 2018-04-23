//
//  MarketUpdateTests.swift
//  MarketUpdateTests
//
//  Created by Henrique Manfroi da Silveira on 21/04/2018.
//  Copyright © 2018 Henrique Manfroi da Silveira. All rights reserved.
//

import XCTest
@testable import MarketUpdate

class MarketUpdateTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInstrumentDataInit(){
        let level = 10.0
        let dict = ["level": level, "description" : "BRT"] as [String : Any]
        let instrument = InstrumentData(fromDict: dict)
        XCTAssert( instrument.level == level)
    }
}
