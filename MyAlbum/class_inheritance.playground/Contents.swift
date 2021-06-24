import UIKit

struct Grade {
    var letter: Character
    var points: Double
    var credits: Double
}

//superclass
class Person {
    var firstName: String
    var lastName: String

    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }

    func printMyName() {
        print("My name is \(firstName) \(lastName).")
    }
}


//class Student {
//    var grades: [Grade] = []
//
//    var firstName: String
//    var lastName: String
//
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//    }
//
//    func printMyName() {
//        print("제 이름은 \(firstName) \(lastName) 입니다.")
//    }
//}
//Person 상속
//subcalss
class Student: Person {
    var grades: [Grade] = []
    //Person을 상속했기 때문에 initializer를 그대로 씀
}

let lion = Person(firstName: "Lion", lastName: "Harison")
let timy = Student(firstName: "Timy", lastName: "Obrian")


lion.printMyName()
timy.printMyName()

let math = Grade(letter: "A", points: 9.2, credits: 3)
let history = Grade(letter: "B", points: 8.5, credits: 3)
// Student class는 Person class에 접근 불가(당연..)
timy.grades.append(math)
timy.grades.append(history)

// A는 B다 일때 class 상속을 통해 코드의 길이를 줄이거나 효율적인 코딩이 가능

// 다중 상속 가능 (Person -> Student -> StudentMusician -> Violinist)
// 뮤지션인 학생
class StudentMusician: Student {
    var minTrainingTime: Int = 2
    var trainedTime: Int = 0
    
    func train() {
        trainedTime += 1
    }
}

class Violinist: StudentMusician {
    var orchestraTeam = "Swift philharmonic"
    
    // 함수 변경
    override func train() {
        trainedTime += 2
    }
}

var musician1 = Violinist(firstName: "Hanna", lastName: "Jang")
var musician2 = StudentMusician(firstName: "MyungHwa", lastName: "Jung")

// Person Class 접근 가능
musician1.firstName
musician2.firstName

//Student Class의 점수 접근 가능
musician1.grades.append(math)
musician2.grades.append(math)

// studentMusician class 최소 연습시간 접근 가능
musician1.minTrainingTime
musician2.minTrainingTime

// Violinist class는 musician1만 접근 가능
musician1.orchestraTeam

// Violinist의 연습 시간 증가
// 부모클래스의 1 증가가 아닌 overried되어 바뀐 2 증가
musician1.train()
musician1.trainedTime

musician2.train()
musician2.trainedTime

// musician2가 1보다 상위 클래스이기 때문에 아래와 같이 재할당 가능(uppercasting)
musician2 = musician1 as StudentMusician

musician2.train()
musician2.trainedTime

// downcasting (optional binding) 상위클래스를 하위클래스로 캐스팅
if let jung = musician2 as? Violinist {
    print("---> Orchestra: \(jung.orchestraTeam)")
}

// Class 상속은 언제 이루어져야 하는가?
// 1. 단일 책임(single Responsibility) : class는 한가지 일을 주로 하는게 좋다
// 2. Type Safety : 데이터의 타입이 명확해야 할 때(ex.받아야 할 데이터의 종류와 성격이 확실하게 구분될 때)
// 3. 기본 동작이 다양하게 구현되어야 할 경우(shared Base Classes)
//     ex. 학생(문과, 이과, 예체능) -> 각 분야의 커리큘럼 및 학습 방법(서로 다름)
// 4. 확장성(Extensiblity)이 필요한 경우
// 5. identity(정체성 구분 필요할 경우) : 상속된 클래스의 특정 속성을 통해 해당 class혹은 해당 객체가 어떤 객체인가를 판단하고 검증할 때 사용
