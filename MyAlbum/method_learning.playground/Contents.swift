import UIKit

struct Lecture {
    var title: String
    var maxStudent: Int = 10
    var numOfRegistered: Int = 0
    
    func remainSeats() -> Int {
        let remainSeats = maxStudent - numOfRegistered
        return remainSeats
    }
    // 구조체의 stored property를 건드는 함수일때는 mutateing 으로 작성
    mutating func register() {
        //등록된 학생 수 증가시키기
        numOfRegistered += 1
    }
    //type property
    static let target: String = "Anybody want to learn something"
    
    // type method
    static func academyName() -> String {
        return "블라블라학원"
    }
}

var lec = Lecture(title: "iOS Junior")

//func remainSeats(of lec: Lecture) -> Int {
//    let remainSeats = lec.maxStudent - lec.numOfRegistered
//    return remainSeats
//}

//remainSeats(of: lec)
lec.remainSeats()

lec.register()
lec.register()

lec.remainSeats()
//8

Lecture.target
Lecture.academyName()

//extension
struct Math {
    static func abs(value: Int) -> Int {
        if value > 0 {
            return value
        } else {
            return -value
        }
    }
}
//절대값
Math.abs(value: -74)

// 기존의 struct를 건들지 않되 기능은 추가되는.
extension Math {
    static func square(value: Int) -> Int {
        return value * value
    }
    
    static func half(value: Int) -> Int {
        return value/2
    }
}

Math.square(value: 8)
Math.half(value: 10)
// Swift의 기본 method에도 extension을 적용할 수 있다
extension Int {
    func square() -> Int {
        return self * self
    }
    
    func half() -> Int {
        return self/2
    }
}

var value: Int = 10

value.square()
value.half()
