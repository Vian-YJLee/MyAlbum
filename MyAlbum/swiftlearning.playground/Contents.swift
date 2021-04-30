import UIKit

 var str = "Hello, playground"

/* let value = arc4random_uniform(10000)

print("랜덤값 : \(value) ")
 */

// Tuple

let coordiante = (6,4)

let x = coordiante.0
let y = coordiante.1

//명시적 표현
let coordianteName = (x: 5, y: 4, z: 9)

let x2 = coordianteName.x
let y2 = coordianteName.y
let z = coordianteName.z

//축약, 개별변수 추출
let (x3, y3, z1) =  coordianteName

x3
y3
z1

// Boolean 불린

let yes = true
let no = false

var isSixBiggerThanNine = 6 > 9
//false
let isLongerThanboth = ("sing") < ("sing a song")
//string 타입도 단순 길이 비교 가능. 비밀번호 등 최소 몇자 이상입력 등에 이런 기능..

if isSixBiggerThanNine {
    print("\(isSixBiggerThanNine) ---> 참")
    
} else {
    print("\(isSixBiggerThanNine) ---> 거짓")
    //이게 뭐야 ㅋㅋㅋㅋ
}

if isLongerThanboth == false {
    print("노래는 sing")
} else {
    print("노래 불러요~ Let singing together!")
}

let name1 = "Jin"
let name2 = "vian"

if name1 == name2 {
    print("이름이 같다")
} else {
    print("이름이 다르다")
}

let isVian = name2 == "vianney"
//bool type, false

let isMale = true
let vianAndMale = isVian && isMale
//and 연산자
let vianOrMale = isVian || isMale
//or 연산자

let greetingMessage: String = isVian ? "Hello Vian" : "Hello stranger"
//삼항연산 (조건 ? 참 : 거짓)
//삼항연산으로 축약
//if isVian {
//    greetingMessage = "Hello Vian"
//    //true
//} else {
//    greetingMessage = "Helle Stranger"
//    //false
//}
//print("\(greetingMessage)")


// ---- Scope

var hour = 52
let payPerHour = 10000
var salary = 0

if hour > 40 {
    let extraHours = hour - 40
    salary += extraHours * payPerHour * 2
    //기본급 + 추가근무수당
    hour -= extraHours
}

salary += hour * payPerHour
print("급여 \(salary)원")
print("\(hour)")

/*
func myPay() {
    var workTime: Int = 0
    let payPerWorkTime: Int = 10000
    var salary2: Int = 0
    
    if workTime > 40 {
        var extraWorkTime = workTime - 40
        salary2 += extraWorkTime * payPerWorkTime * 2
        workTime -= extraWorkTime
    }
    salary2 += workTime * payPerWorkTime
    
    
}
 
 */
//함수 만들어봄. 변수명 가독성 떨어진다..
func myPay(Time: Int, Pay: Int, Salary2: Int = 0) {
    var process = (workTime: Time, payPerWorkTime: Pay, mounthlyPay: Salary2)
    if process.payPerWorkTime > 40 {
        let extraWorkTime = process.workTime - 40
        process.mounthlyPay += extraWorkTime * Pay * 2
        print(process.mounthlyPay)
        process.workTime -= extraWorkTime
        print(process.workTime)
    }
    process.mounthlyPay += process.workTime * Pay
    print("이번달 받을 돈은 \(process.mounthlyPay) 입니다.")

}

myPay(Time: 60, Pay: 10000)


