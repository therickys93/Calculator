import Foundation

public class CalculatorParser {
    
    private var string: String

    public init(string: String) {
        self.string = string
    }

    public func getOperations() -> String {
	var result = ""
	for operation in Operations.AllValues {
		result += operation.rawValue + " "
	}
	return result
    }

    public func getResult() -> String {
        if self.string == "" {
            return "no string provided"
        }
        var array = self.string.components(separatedBy: " ")
        if let first = Double(array[0]) {
            if let second = Double(array[2]) {
                let calc = Calculator()
                switch array[1] {
                case Operations.Plus.rawValue:
                    return "\(calc.add(a: first, b: second))"
                case Operations.Minus.rawValue:
                    return "\(calc.sub(a: first, b: second))"
                case Operations.Multiply.rawValue:
                    return "\(calc.mul(a: first, b: second))"
                case Operations.Divider.rawValue:
                    return "\(calc.div(a: first, b: second))"
                default:
                    return "error with the operation"
                }
            } else {
                return "error with the second operand"
            }
        } else {
            return "error with the first operand"
        }
    }
}
