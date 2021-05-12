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
