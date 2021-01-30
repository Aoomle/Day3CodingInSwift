//
//  Day3CodingInSwiftTests.swift
//  Day3CodingInSwiftTests
//
//  Created by Abdulmalik Muhammad on 30/01/2021.
//

import XCTest
@testable import Day3CodingInSwift

class Day3CodingInSwiftTests: XCTestCase {
  
  var game: Game!
  override func setUpWithError() throws {
    game = Game()
  }
  
  override func tearDownWithError() throws {
    game = nil
  }
  
  func testScorePositive() {
    let guess = game.target + 5
    let score = game.points(sliderValue: guess)
    XCTAssertEqual(score, 95)
  }
  
  func testScoreNegative() {
    let guess = game.target - 5
    let score = game.points(sliderValue: guess)
    XCTAssertEqual(score, 95)
  }
  
}
