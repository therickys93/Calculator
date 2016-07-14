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

}

extension CalculatorTests {
	static var allTests: [(String, (CalculatorTests) -> () throws -> Void)] {
		return [("testAddCheck", testAddCheck)]
	}
}
