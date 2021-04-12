import CalculatorLogger

// Calculation function using our two numbers and the operator
public func calculate(number1: Double, op: Operator, number2: Double) -> Double {
    Logger.debug("Now calculating \(number1) with \(number2) using \(op)")
    switch op {
    case .plus:
        return number1 + number2
    case .minus:
        return number1 - number2
    case .divide:
        return number1 / number2
    case .multiply:
        return number1 * number2
    }
}
