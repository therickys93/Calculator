import XCTest
@testable import Calculator

class CalculatorTests: XCTestCase {

	var calc:Calculator!

	override func setUp() {
		super.setUp()
		calc = Calculator()
	}

	func testAddCheck() {
		XCTAssertEqual(calc.add(a: 1, b: 1), 2)
	}

	func testSubCheck() {
		XCTAssertEqual(calc.sub(a: 1, b: 1), 0)
	}

	func testMultiply() {
		XCTAssertEqual(calc.mul(a: 1, b: 2), 2)
	}

	func testDivider() {
		XCTAssertEqual(calc.div(a: 6, b: 3), 2)
	}

}

extension CalculatorTests {
	static var allTests: [(String, (CalculatorTests) -> () throws -> Void)] {
		return [
			("testAddCheck", testAddCheck),
			("testSubCheck", testSubCheck),
			("testMultiply", testMultiply),
			("testDivider", testDivider)
		]
	}
}
