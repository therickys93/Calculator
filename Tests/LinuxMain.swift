import XCTest
@testable import CalculatorTests

XCTMain([
    testCase(CalculatorTests.allTests),
    testCase(OperationsTests.allTests),
    testCase(CalculatorParserTests.allTests)
])
