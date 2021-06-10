import UIKit

// instance property
struct Person {
    // stored property
    var firstName: String
    var lastName: String
    // var와 let은 자료의 성격에 따라 맞추는 것이 프로그램의 안정성에 좋다.
    
    // computed property는 var 만 가능, read only
    // 값을 새로 셋팅(할당, 삭제, 업데이트 등) 할수 없으나
    // structure 내 데이터 간 관계를 잘 정리해두면 가능..(getter, setter 를 사용한 일종의 가공 개념)
    var fullName: String {
        get {
            return "\(firstName) \(lastName)"
        }
        set {
            // newValue = hue Jack 에서 " "(빈칸)을 기준으로 앞뒤로 나눠 새로운 값을 재 분배
            // saparated component는 이런 방식으로 쓴다 정도로 알아둘 것
            if let firstName = newValue.components(separatedBy: " ").first {
                self.firstName = firstName
            }
            if let lastName = newValue.components(separatedBy: " ").last {
                self.lastName = lastName
            }
        }
    }
    static let isAlien: Bool = false
}

//type property

var person = Person(firstName: "lala", lastName: "bla")

person.firstName
person.lastName

person.firstName = "blavla"
person.lastName = "lalavla"

person.firstName
person.lastName

person.fullName
person.fullName = "hue Jack"

person.fullName

// type property
// instance의 생성여부와 상관없이 만들 수 있으며 struct, class의 type자체에 속한 property를 만들고자 할때 사용
Person.isAlien

