import UIKit

// closure : 일종의 이름없는 method....

// var multiplyClosure: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in return a * b
// }

// 파라미터 타입 줄이기 --->
// 소괄호 생략 가능
// Int 타입으로 받겠다 선언했으니 소괄호와 '-> Int' 생략
var multiplyClosure1: (Int, Int) -> Int = { a, b in
    return a * b
}

// 혹은

var multiplyClosure2: (Int, Int) -> Int = { return $0 * $1
// return 생략 가능
}

var result1 = multiplyClosure1(4, 2)
var result2 = multiplyClosure2(4, 2)

// 협업상황에서는 의미 파악과 소통에 문제가 있을 수 있으므로 너무 많은 생략은 지양

// 함수의 파라미터로 Closure로 받는 경우 예제

func operateTwoNum(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    let result = operation(a, b)
    return result
}

operateTwoNum(a: 4, b: 2, operation: multiplyClosure1)
operateTwoNum(a: 4, b: 2, operation: multiplyClosure2)

var addClosure: (Int, Int) -> Int = { a, b in return a + b}

operateTwoNum(a: 4, b: 2, operation: addClosure)

//세번째 파라미터 부분에 closure를 즉흥적으로 생성 할 수도 있음
operateTwoNum(a: 4, b: 2) { a, b in
    return a - b
}

// ------- Capturing Value
let voidClosure: () -> Void = {
    print("Input 없고 output도 없는 closure")
}
voidClosure
// 확인

// capturing Value : 기존 변수는 클로저에 사용된 값이 캡쳐되어 다시 해당 변수로 저장 됨..
// 익숙지 않으면 명시적으로 값을 넘기는 과정을 남기는 것이 좋음
var count = 0

let incrementer = {
    count += 1
}

incrementer()
incrementer()
incrementer()

count
