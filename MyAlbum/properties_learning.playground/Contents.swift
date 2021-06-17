import UIKit
// Object = data + method
// data 파트를 property의 개념으로 봄

// instance property
struct Person {
    // stored property
    var firstName: String {
        //프로퍼티 값의 변경 사항 트래킹(observation) 방법
        willSet {
            print("willSet: \(firstName) ---> \(newValue)")
        }//변경 전 추적
        didSet {
            print("didSet: \(oldValue) ---> \(firstName)")
        }//변경 후 추적
    }
    var lastName: String
    // var와 let은 자료의 성격에 따라 맞추는 것이 프로그램의 안정성에 좋다.
    
    
    // lazy property: 인스턴스 생성시 실행되는 것이 아닌 해당프로퍼티에 접근이 이루어질때가 되어서야(필요에 의해서 접근) 실행되는 프로퍼티
    lazy var isPopular: Bool = {
        if fullName == "Jay Park" {
            return true
        } else {
            return false
        }
    }()
    
    // computed property는 var 만 가능, read only
    // 값을 새로 셋팅(직접 저장, 할당, 삭제, 업데이트 등) 할수 없으나
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



