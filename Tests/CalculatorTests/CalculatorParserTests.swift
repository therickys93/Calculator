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

    func testFirstOperandError() {
        let parser = CalculatorParser(string: "c / 3")
        XCTAssertEqual("error with the first operand", parser.getResult())
    }

    func testSecondOperandError() {
        let parser = CalculatorParser(string: "3 - j")
        XCTAssertEqual("error with the second operand", parser.getResult())
    }

    func testOperationError() {
        let parser = CalculatorParser(string: "1 c 4")
        XCTAssertEqual("error with the operation", parser.getResult())
    }

    func testNoString() {
        let parser = CalculatorParser(string: "")
        XCTAssertEqual("no string provided", parser.getResult())
    }
}

extension CalculatorParserTests {
	static var allTests: [(String, (CalculatorParserTests) -> () throws -> Void)] {
		return [
			("testConstructor", testConstructor),
            ("testAdd", testAdd),
            ("testSub", testSub),
            ("testMul", testMul),
            ("testDiv", testDiv),
            ("testFirstOperandError", testFirstOperandError),
            ("testSecondOperandError", testSecondOperandError),
            ("testOperationError", testOperationError),
            ("testNoString", testNoString)
		]
	}
}