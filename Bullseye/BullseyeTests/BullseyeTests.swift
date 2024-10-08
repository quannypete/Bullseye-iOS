//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by Quanny Hampton on 9/19/24.
//

import XCTest
@testable import Bullseye

final class BullseyeTests: XCTestCase {
    
    var game: Game!

    override func setUpWithError() throws {
       game = Game()
    }

    override func tearDownWithError() throws {
       game = nil
    }
    

    func testScorePositive() {
        let guess = game.target + 5
        let score = game.point(slidervalue: guess)
        XCTAssertEqual(score, 95)
    }
    
    func testScoreNegative() {
        let guess = game.target - 5
        let score = game.point(slidervalue: guess)
        XCTAssertEqual(score, 95)
    }


}
