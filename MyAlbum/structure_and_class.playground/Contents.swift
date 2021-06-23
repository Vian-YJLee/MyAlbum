import UIKit

// Structure를 사용해야 할 경우
// 1. 두 Object의 데이터 등을 '같다 혹은 다르다' 로 비교해야하는 경우
// ex) point1 = Point(x: 3, y: 5)
//     point2 = Point(x: 3, y: 5)
//     를 비교하는 경우
// 2. copy된 각각의 객체들이 독립적인 상태를 가져야 하는 경우
// ex) var myMac = Mac(owner : "blabla")
//     var yourMac = myMac
//     yourMac.owner = "Tifa"

//     myMac.owner
//     yourMac.owner  ---> 즉, 각각 Mac을 소유하고, 오너가 전부 다른 상태

// 3. 코드에서 오브젝트의 데이터를 여러 스레드에 걸쳐서 사용해야 할 경우 (사용 안정성 담보)


struct PersonStruct {
    var firstName: String
    var lastName: String

    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    mutating func uppercaseName() {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}
// struct -> class porting
// class를 사용해야 하는 경우
// 1. 두 object의 인스턴스 자체가 같음을 확인해야 할때
// 2. 하나의 객체가 필요하고, 여러 대상에 의한 접근과 변경이 필요한 경우 (ex. UIApplication)

class PersonClass{
    var firstName: String
    var lastName: String

    // initialized 초기값 지정 확인
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    func uppercaseName() {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}

var personStruct1 = PersonStruct(firstName: "John", lastName: "vivid")
var personStruct2 = personStruct1

var personClass1 = PersonClass(firstName: "Jack", lastName: "Dorsey")
var personClass2 = personClass1


print(personStruct1.fullName)
print(personClass2.fullName)
// struct와 class의 차이. copy와 reference
personStruct2.firstName = "Timy"
personStruct1.firstName
personStruct2.firstName

personClass2.firstName = "Timy"
personClass1.firstName
personClass2.firstName

// 다른 클래스를 할당했을 경우
personClass2 = PersonClass(firstName: "Jonathan", lastName: "Ive")
personClass1.firstName
personClass2.firstName

// (비유적으로)서로 다른 방향을 바라보게 되었으니 상호 영향 사라짐



// 일단 struc를 주로 사용함.
