//
//  BootcampAppDemoTests.swift
//  BootcampAppDemoTests
//
//  Created by Alex Sors on 21/02/21.
//

import XCTest
@testable import BootcampAppDemo

class BootcampAppDemoTests: XCTestCase {

    func testaddCountEnterBackgroundMethod() {
        //Given
        let sut = ViewControllerFake()
        sut.setUp()
        //When
        sut.addCountEnterBackground()
        //Then
        XCTAssertEqual(sut.calls.didEnterBackground, 1)
    }
    
    class ViewControllerFake: ViewController {
        func setUp() {
            didEnterBackgroundLabel = UILabel()
        }
    }

}
