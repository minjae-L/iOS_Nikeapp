import UIKit

// Swift 4 function

//함수 : 코드의 최상위 레벨에 선언됨
//함수 이름만으로 호출할 수 있다.
//
//메소드 : 특정 형식 내부에 선언됨
//반드시 연관된 형식 이름이나 인스턴스 이름을 통해 호출해야한다.

// 함수의 네가지 요소
// 1. 함수 이름
// 2. 파라미터
// 3. 리턴형
// 4. 실행할 코드
//
// func 함수이름 { 파라미터 목록 } -> 리턴형 {
//     실행할 코드
// }

//func plusOne(x: Int) -> Int {
//    return x + 1
//}
//
//func multiplyTwo( x: Int) -> Int {
//    return plusOne(x: x) * 2
//}

//함수 호출 => 함수이름(파라미터 목록)

//var result = plusOne(x: 1)
//print(result)
//
//result = multiplyTwo(x: 2)
//print(result)

//func multiply(x: Int , by: Int) -> Int {
//    return plusOne(x: x) * by
//}

//let result = multiply(x: 1, by: 2)

// 파라미터 => 파라미터이름: 자료형
// 파라미터는 기본적으로 함수 외부에서 접근 x
// 함수가 실행되는 동안 함수 내부에서만 접근 O
// 파라미터는 상수
// 함수를 호출할 때, 이미 선언되어 있는 변수나 상수, 또는 리터럴을 인자로 전달 O
// 인자 : Actual Parameter = 값이 변경되지 않음. 사라지지 않음
// Formal Parameter는 함수가 실행될 때 생성됨, 함수의 실행이 종료되면 메모리에서 사라진다. 값을 변경해도 인자의 값이 변경되지 않는다.

//
//func onePlusOne() -> Int {
//    return 1 + 1
//}
//let result = onePlusOne()

//multiply(x: 1, by: 2) // 인자를 파라미터 이름과 함께 전달
//함수를 호출할 때는 인자를 인자레이블과 함께 전달해야 한다.

// func 함수이름(인자레이블 파라미터 이름: 파라미터자료형) {
//     실행할 코드
// }
// 인자레이블은 함수 호출할때 사용할 수 있고, 함수 내부에서는 사용할 수 없다.

// 파라미터 기본 값
// func 함수이름(인자레이블 파라미터이름: 파라미터자료형 = 기본값) {
//     실행할 코드
// }

// 가변 파라미터
// 파라미터: 인자 = n:1
// func 함수이름(인자레이블 파라미터이름: 파라미터자료형...){
//     실행할 코드
// }

//func plus(_ numbers: Int...) -> Int {
//    var sum = 0
//    for n in numbers {
//        sum += n
//    }
//    return sum
//}
//var result = plus(1,2)

// 입출력 파라미터

//func sayHello(to: String){
//    var tmp = to
//    tmp = "Apple"
//    print("Hello, \(tmp)")
//}
//
//var str = "Swift"
//sayHello(to: str)
// 인자로 전달한 변수를 함수 내부에서 직접 변경하고 싶다면 입출력 파라미터를 사용한다. &인자
//func 함수이름(파라미터이름: inout 파라미터자료형) {
//    실행할 코드
//}

//func sayHello2(to: inout String){
//    to = "Apple"
//}
//
//var str = "Swift"
//sayHello2(to: &str)
// 입출력 파라미터는 기본값을 가질 수 없다.
// 가변인자 파라미터를 입출력 파라미터로 선언할 수 없다.
// inout, let 은 서로 배타적이기 때문에 함께 사용할 수 없다.

// - Copy-in Copy-out 또는 Call by Value Result
//   인자를 입출력 파라미터에 전달하면 메모리에 새로운 임시 파라미터 생성 및 인자의 값으로 초기화
//   내부에서 값을 변경 할 경우 임시 파라미터의 값이 변경됨.
//   이 시점에서 인자로 전달한 변수의 값은 변경되지 않음
//   함수의 실행이 종료된 후 임시 파라미터의 값이 인자로 전달된 변수에 할당됨

// 리턴값과 리턴형
// 파라미터 또는 리턴값이 없다는 키워드 : Void

// return
// 반드시 함수 내에서 값을 리턴
// 결과 값을 전달한 후 함수의 실행을 즉시 종료
// 두개 이상의 값을 동시에 리턴할 수 없다

// 복합 값 리턴
// 구조체 이용
//struct Stat {
//    let sum: Double
//    let avg: Double
//}

//func statistics(_ numbers: Int...) -> Stat {
//    var sum = 0
//    for n in numbers {
//        sum += n
//    }
//
//    return Stat(sum: Double(sum), avg: Double(sum) / Double(numbers.count))
//}
//
//let result = statistics(1,2,3,4,5)
//print("sum: \(result.sum)")
//print("sum: \(result.avg)")

//func statistics(_ numbers: Int...) -> (sum: Double, avg: Double) {
//    var sum = 0
//
//    for n in numbers {
//        sum += n
//    }
//    return (sum: Double(sum), avg: Double(sum) / Double(numbers.count))
//
//}
//
//let result = statistics(1,2,3,4,5)
//print("sum: \(result.sum)")
//print("sum: \(result.avg)")

// Function Types
// multiply : (Int , Int ) -> Int
// 값을 리턴하지 않는 swap : (inout Int, inout Int) -> ()
//
//func add(_ a: Int , _ b: Int) -> Int {
//    print(#function)
//    return a + b
//}
//func subtract(_ a: Int , _ b: Int) -> Int {
//    print(#function)
//    return a - b
//}
//func multiply(_ a: Int , _ b: Int) -> Int {
//    print(#function)
//    return a * b
//}
//func divide(_ a: Int , _ b: Int) -> Int {
//    print(#function)
//    return a / b
//}

// (Int, Int) -> Int
//
//let calc: (Int, Int) -> Int = add
//
//var result = add(1,2)
//
//result = calc(1,3)
//
//let firstOperand = 2
//let secondOperand = 3
//let op = "*"
//
//var function: ((Int, Int) -> Int)?
//
//func add(_ a: Int , _ b: Int) -> Int {
//    print(#function)
//    return a + b
//}
//func subtract(_ a: Int , _ b: Int) -> Int {
//    print(#function)
//    return a - b
//}
//func multiply(_ a: Int , _ b: Int) -> Int {
//    print(#function)
//    return a * b
//}
//func divide(_ a: Int , _ b: Int) -> Int {
//    print(#function)
//    return a / b
//}
//
//switch op {
//case "+":
//    function = add
//case "-":
//    function = subtract
//case "*":
//    function = multiply
//case "/":
//    function = divide
//default:
//    break
//}
//
//if let calc = function{
//    let result = calc(firstOperand, secondOperand)
//    print("\(firstOperand) \(op) \(secondOperand) = \(result)")
//} else {
//    print("Not supported")
//}

//func add(_ a: Int , _ b: Int) -> Int {
//    print(#function)
//    return a + b
//}
//func subtract(_ a: Int , _ b: Int) -> Int {
//    print(#function)
//    return a - b
//}
//func multiply(_ a: Int , _ b: Int) -> Int {
//    print(#function)
//    return a * b
//}
//func divide(_ a: Int , _ b: Int) -> Int {
//    print(#function)
//    return a / b
//}
//let firstOperand = 2
//let secondOperand = 3
//let op = "*"
//
//var function: ((Int, Int) -> Int)?
//
//switch op {
//case "+":
//    function = add
//case "-":
//    function = subtract
//case "*":
//    function = multiply
//case "/":
//    function = divide
//default:
//    break
//}
//
//func processResult(function f: (Int, Int) -> Int, lhs: Int, rhs: Int) -> Int {
//    return f(lhs, rhs)
//}
//
//if let calc = function {
//    let result = processResult(function: calc, lhs: firstOperand, rhs: secondOperand)
//    print("\(firstOperand) \(op) \(secondOperand) = \(result)")
//} else {
//    print("not supported")
//}


//func add(_ a: Int , _ b: Int) -> Int {
//    print(#function)
//    return a + b
//}
//func subtract(_ a: Int , _ b: Int) -> Int {
//    print(#function)
//    return a - b
//}
//func multiply(_ a: Int , _ b: Int) -> Int {
//    print(#function)
//    return a * b
//}
//func divide(_ a: Int , _ b: Int) -> Int {
//    print(#function)
//    return a / b
//}
//
//func selectOperator(operator op: String) -> ((Int, Int) -> Int)? {
//    switch op {
//    case "+":
//        function = add
//    case "-":
//        function = subtract
//    case "*":
//        function = multiply
//    case "/":
//        function = divide
//    default:
//        break
//    }
//}


// Nested Function : 함수 내에서 다른 함수 구현

func selectOperator(operator op: String) -> ((Int, Int) -> Int)? {
    func add(_ a:Int, _ b: Int) -> Int{
        print(#function)
        return a + b
    }
    func subtract(_ a: Int, _ b: Int) -> Int{
        print(#function)
        return a - b
    }
    func multiply(_ a: Int, _ b: Int) -> Int{
        print(#function)
        return a * b
    }
    func divide(_ a: Int, _ b: Int) -> Int{
        print(#function)
        return a / b
    }
        switch op {
        case "+":
            return add
        case "-":
            return subtract
        case "*":
            return multiply
        case "/":
            return divide
        default:
            return nil
        }
}

