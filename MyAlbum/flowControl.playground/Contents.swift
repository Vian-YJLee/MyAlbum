import UIKit
import Foundation

// while

// while 조건 {
//code
// }

/*
 
 
print("---- while") // 조건을 검사 후 코드 수행
var i = 10
while i < 10 {
    print(i)
    
//    if i == 5 {
//        break
//    }
    i += 1
}
print("----- repeat") // 코드 수행 후 조건 검사
i = 10
repeat {
    print(i)
    i += 1
} while i < 10

// while : 조건 검사 > 코드 수행 > 조건 검사 > 코드 수행
// repeat - while : 코드 수행 > 조건 검사 > 코드 수행 > 조건 검사


// -------- for
var sumRange = 0
let closedRange = 0...10 //0~10
let halfRange = 0..<10 //0~9

var sum = 0

for sumRange in halfRange {
    
    print("---> \(sumRange)")
    sum += sumRange
}

print("---> Total sum: \(sum)")


var sinValue: CGFloat = 0

for sinGraph in closedRange {
    sinValue = sin(CGFloat.pi/4 * CGFloat(sinGraph)) //sin 그래프
}

let name = "John"

for _ in closedRange {
    print("--->name: \(name)")
}

for evenNum in closedRange {
    if evenNum % 2 == 0 { // 나머지 연산
    print("--->짝수: \(evenNum)")
    }
}

for oddNum in closedRange where oddNum % 2 == 1 { //for문의 조건
    print("--->홀수: \(oddNum)")
}

for underSix in closedRange where underSix < 6 {
    print("--->5이하: \(underSix)")
}

for ordered in closedRange {
    if ordered == 3 { //3일 때 continue이전으로 다시 돌아가 for문 수행
        continue
    }
    print("---> \(ordered)")
}

//for 중첩

for a in halfRange where a == 2{ //2단만
    if a == 0 {
        continue
    }
    for b in halfRange where b > 0 {
        print("gugu: \(a) * \(b) = \(a * b)")
    }
} //사실 다중 for문이 협업에는 그렇게 좋은게 아니란건 수 년 간 경험으로..^^;

*/


//swift의 switch

/*
let num = 10

switch num {
case 0:
    print("---> 0 입니다")
case 0...10:
    print("---> 0부터 10사이 입니다")
case 10:
    print("---> 10 입니다")
default:
    print("---> 나머지 입니다")
}

let animal = "cat"

switch animal {
case "dog", "cat":
    print("반려동물")
default:
    print("무슨 동물이죠")
}

 */

let num = 15

switch num {
case _ where num % 2 == 0:
    print("\(num)은 짝수")
default:
    print("\(num)은 홀수")
}

