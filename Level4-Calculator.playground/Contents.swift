import Foundation

//추상 클래스
class AbstractOperation {
    func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return 0 //하위 클래스에서 메서드 구체화 예정
    }
}

//상위 클래스
class Calculator {
    
    //상위 클래스의 프로퍼티에 추상 클래스 상속
    private var operate: AbstractOperation
    
    //상위 클래스의 프로퍼티에 하위 클래스의 인스턴스를 대입하는 생성자
    init(operatorr: AbstractOperation) {
        self.operate = operatorr
    }
    
    //하위 클래스의 인스턴스를 인자로 받아 상위 클래스의 프로퍼티에 대입하는 메서드
    func changeOperator (operatorr: AbstractOperation) {
        self.operate = operatorr
    }
    
    //하위 클래스의 인스턴스를 통해 override된 하위 클래스의 메서드를 적용하여 연산하는 메서드
    func calculate(firstNumber: Double, secondNumber: Double) -> Double {
        return operate.operate(firstNumber: firstNumber, secondNumber: secondNumber)
    }
}

//추상 클래스를 상속 받음, override를 통해 메서드 구체화
class AddOperation: AbstractOperation {
    override func operate(firstNumber: Double, secondNumber: Double) -> Double{
        return firstNumber + secondNumber
    }
}
class SubtractOperation: AbstractOperation {
    override func operate(firstNumber: Double, secondNumber: Double) -> Double{
        return firstNumber - secondNumber
    }
}
class MultiplyOperation: AbstractOperation {
    override func operate(firstNumber: Double, secondNumber: Double) -> Double{
        return firstNumber * secondNumber
    }
}
class DivideOperation: AbstractOperation {
    override func operate(firstNumber: Double, secondNumber: Double) -> Double{
        return firstNumber / secondNumber
    }
}

//상위 클래스의 인스턴스 생성, 생성자를 통해 하위 클래스 인스턴스로 상위 클래스 프로퍼티 초기화
//상위 인스턴스 -> 상위 메서드 -> 추상 계층(상위 프로퍼티 -> 하위 인스턴스) -> 하위 메서드
let calculator = Calculator(operatorr: AddOperation())
let addResult = calculator.calculate(firstNumber: 1, secondNumber: 1)

calculator.changeOperator(operatorr: SubtractOperation())
let subtractResult = calculator.calculate(firstNumber: 1, secondNumber: 1)

calculator.changeOperator(operatorr: MultiplyOperation())
let multiplyResult = calculator.calculate(firstNumber: 1, secondNumber: 1)

calculator.changeOperator(operatorr: DivideOperation())
let divideResult = calculator.calculate(firstNumber: 1, secondNumber: 1)

print("addResult : \(addResult)")
print("subtractResult : \(subtractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")
