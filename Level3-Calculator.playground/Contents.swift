import Foundation

class Calculator {
    func calculate(operator: String, firstNumber: Double, secondNumber: Double) -> Double {
        
        //프로퍼티를 하위 클래스 인스턴스로 초기화
        let add = AddOperation()
        let subtract = SubtractOperation()
        let multiply = MultiplyOperation()
        let divide = DivideOperation()
        
        //스위치문으로 연산 구분
        switch `operator` {
        case "+": return add.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "-": return subtract.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "*": return multiply.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "/": return divide.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        default : return 0
        }
    }
}

//연산을 위한 각각의 클래스 선언
class AddOperation {
    func operate(firstNumber: Double, secondNumber: Double) -> Double {
        firstNumber + secondNumber
    }
}

class SubtractOperation {
    func operate(firstNumber: Double, secondNumber: Double) -> Double {
        firstNumber - secondNumber
    }
}

class MultiplyOperation {
    func operate(firstNumber: Double, secondNumber: Double) -> Double {
        firstNumber * secondNumber
    }
}

class DivideOperation {
    func operate(firstNumber: Double, secondNumber: Double) -> Double {
        firstNumber * secondNumber
    }
}

let calculator = Calculator()

let addResult = calculator.calculate(operator: "+", firstNumber: 1, secondNumber: 1)
let subtractResult = calculator.calculate(operator: "-", firstNumber: 1, secondNumber: 1)
let multiplyResult = calculator.calculate(operator: "*", firstNumber: 1, secondNumber: 1)
let divideResult = calculator.calculate(operator: "/", firstNumber: 1, secondNumber: 1)

print("addResult : \(addResult)")
print("subtractResult : \(subtractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")
