//
//  Assignment2V2Tests.swift
//  Assignment2V2Tests
//
//  Created by Comp1601 on 2015-02-13.
//  Copyright (c) 2015 Comp1601. All rights reserved.
//

import UIKit
import XCTest

class Assignment2V2Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    /*
     * Method to test the UITextField+Conversion class
     * testing binary to decimal
     */
    func testUITextFiledConversion() {
        // This is an example of a functional test case.
        let binary    = "00010"
        let converted = binary.binaryToInt
        XCTAssert( converted == 2 , "Pass")
    }
    
    /*
    * Method to test the UITextField+Conversion class
    * testing binary to decimal(Double)
    */
    func testUITextFieldConversion2() {
        let binary    = "00110"
        let converted = binary.binaryToDouble
        XCTAssert( converted == 6.0, "Pass")
    }
    
   /*
    * Method to test the UITextField+Conversion class
    * testing binary to Hexadecimal
    */
    func testUITextFieldConversion3() {
        let binary    = "01110"
        let converted = binary.binaryToHexa
        XCTAssert(converted == "e", "Pass")
        
    }
    
   /*
    * Method to test the UITextField+Conversion class
    * testing decimal value to binary
    */
    func testUITextFieldConversion4() {
        let decimal   = "50"
        let converted = decimal.intToBinary
        XCTAssert(converted == "110010", "Pass")
        
    }
    
   /*
    * Method to test the UITextField+Conversion class
    * testing decimal to hexadecimal
    */
    func testUITextFieldConversion5() {
        let decimal   = "50"
        let converted = decimal.intToHexa
        XCTAssert(converted == "32", "Pass")
    }
    
   /*
    * Method to test the UITextField+Conversion class
    * testing hexadecimal to decimal
    */
    func testUITextFieldConversion6() {
        let hexaDecimal = "1b4"
        let converted   = hexaDecimal.hexaToInt
        XCTAssert(converted == 436, "Pass")
    }
    
   /*
    * Method to test the UITextField+Conversion class
    * testing hexadecimal to binary
    */
    func testUITextFieldConversion7() {
        let hexaDecimal = "1b4"
        let converted   = hexaDecimal.hexaToBinary
        XCTAssert(converted == "110110100", "Pass")
    }
    
   
    
}
