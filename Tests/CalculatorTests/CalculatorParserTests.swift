import XCTest
@testable import Calculator

class CalculatorParserTests: XCTestCase {

    override func setUp() {
		super.setUp()
    }

    func testConstructor() {
        let _ = CalculatorParser(string: "1 + 2")  
    }

    func testAdd() {
        let parser = CalculatorParser(string: "1 + 2")
        XCTAssertEqual("3.0", parser.getResult())
    }

    func testSub() {
        let parser = CalculatorParser(string: "2 - 1")
        XCTAssertEqual("1.0", parser.getResult())
    }

    func testMul() {
        let parser = CalculatorParser(string: "3 * 4")
        XCTAssertEqual("12.0", parser.getResult())
    }

    func testDiv() {
        let parser = CalculatorParser(string: "14 / 7")
        XCTAssertEqual("2.0", parser.getResult())
    }

}

extension CalculatorParserTests {
	static var allTests: [(String, (CalculatorParserTests) -> () throws -> Void)] {
		return [
			("testConstructor", testConstructor),
            ("testAdd", testAdd),
            ("testSub", testSub),
            ("testMul", testMul),
            ("testDiv", testDiv)
		]
	}
}