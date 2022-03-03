//
//  VisualisingDataStructuresTests.swift
//  VisualisingDataStructuresTests
//
//  Created by James, Killian (NA) on 03/03/2022.
//

import XCTest
@testable import VisualisingDataStructures

class VisualisingDataStructuresTests: XCTestCase {

    func testPushingDataToStack() throws {
        let stack = Stack()
        stack.push(pushItem: "Sup")
        XCTAssertEqual(stack.stack, ["Sup"])
    }
    
    func testPoppingDataFromList() throws {
        let stack = Stack()
        stack.push(pushItem: "test Item")
        stack.pop()
        XCTAssertEqual(stack.pop(), "test Item")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
