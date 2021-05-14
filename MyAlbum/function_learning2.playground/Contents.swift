import UIKit

// 1. 성/이름 받아 fullname출력 함수
// 2. 1 함수에서 faram name제거 후 fullname 출력
// 3. 성/이름 받아 fullname return 함수

// 1.
func name1(fistName: String, lastName: String) {
    print("----> fullname \(lastName)\(fistName)")
}

name1(fistName: "뫄뫄", lastName: "이")

// 2.

func name2(_ firstName: String, _ lastName: String) {
    print("풀넴: \(lastName)\(firstName)")
}

name2("솨솨", "킴")

// 3.
func name3(firstName: String, lastName: String) -> String {
    //let fullName = "\(lastName) \(firstName)"
    return "\(lastName) \(firstName)"
}

name3(firstName: "롸롸", lastName: "박")

//출력으로 이것저것
let returnTest = name3(firstName: "와와", lastName: "장")
returnTest
print("풀넴: \(returnTest)")


// overload 개념: 같은 이름, 다른 행동

func printTotalPrice(price: Double, stock: Double) {
    print("Total Price: \(price * stock)")
}

func printTotalPrice(price: Int, stock: Int) {
    print("Total Price: \(price * stock)")
}

// In-Out parameter

//func increamentPrint(_ value: Int) {
//    value += 1
//    print("\(value)")
//}
//parameter는 지정되는 순간 값을 카피하기 때문에 constant로 뮤츄얼함
// 그래서 copy in-out 필요

var value = 3
func increamentPrint(_ value: inout Int) {
    value += 1
    print(value)
}

//혹은

increamentPrint(&value)

// 함수를 그 자체로 파라미터로 넘기는 법 function as a param

func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func subtract(_ a: Int, _ b: Int) -> Int {
    return a - b
}

var function1 = add
function1(4, 2)
function1 = subtract
function1(6, 2)

//함수를 파라미터로 넘길 때는 파라미터 형태가 같아야 한다
func printResult(_ function: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    let result = function(a, b)
    print(result)
}

printResult(add, 10, 5)
printResult(subtract, 10, 5)

//함수는 한가지 일만 하도록 구성하는 것이 가장 Best
