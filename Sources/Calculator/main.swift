import Darwin
import Foundation

// CommandLine gives us access to the given arguments
let arguments = CommandLine.arguments

// We expect three parameters: first number, operator, second number
func printUsage(message: String) {
    let name = URL(string: CommandLine.arguments[0])!.lastPathComponent
    print("usage: " + name + " number1 [+ | - | / | *] number2")
    print("    " + message)
}

// The first one is the binary name, so in total 4 arguments
guard arguments.count == 4 else {
    printUsage(message: "You need to provide two numbers and an operator")
    exit(1);
}
// We expect the first parameter to be a number
guard let number1 = Double(arguments[1]) else {
    printUsage(message: arguments[1] + " is not a valid number")
    exit(1);
}
// We expect the second parameter, to be one of our operators
enum Operator: String {
    case plus = "+"
    case minus = "-"
    case divide = "/"
    case multiply = "*"
}
guard let op = Operator(rawValue: arguments[2]) else {
    printUsage(message: arguments[2] + " is not a known operator")
    exit(1);
}
// We expect the third parameter to also be a number
guard let number2 = Double(arguments[3]) else {
    printUsage(message: arguments[3] + " is not a valid number")
    exit(1);
}
// Calculation function using our two numbers and the operator
func calculate(number1: Double, op: Operator, number2: Double) -> Double {
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
// Calculate the result
let result = calculate(number1: number1, op: op, number2: number2)
// Print result to output
print("Result: \(result)")
