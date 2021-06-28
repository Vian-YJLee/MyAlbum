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

class Student: Person {
    var grades: [Grade] = []
    //Person을 상속했기 때문에 initializer를 그대로 씀
    
    override init(firstName: String, lastName: String) {
        super.init(firstName: firstName, lastName: lastName)
    }
    
    convenience init(student: Student) {
        self.init(firstName: student.firstName, lastName: student.lastName)
    }
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
// 2phase-Initialization 상속 패턴
class StudentMusician: Student {
    var minTrainingTime: Int = 2
    var trainedTime: Int = 0
    var favMusic: [String]
    
    init(firstName: String, lastName: String, favMusic: [String]) {
        //phase 1
        self.favMusic = favMusic //stored property 먼저 초기화
        super.init(firstName: firstName, lastName: lastName) //다음에 super를 통해 부모 class에 property 설정
        
        // phase 2
        self.train()
        
        // 순차적으로 불러와야한다..property setting 먼저, 그다음 self 등으로 함수 사용
    }
    
    // convenience initializer : 초기화 해야할 data가 많아질때 간략화 방법
    convenience init(name: String) {
        self.init(firstName: name, lastName: "", favMusic: [])
    }
    
    func train() {
        trainedTime += 1
    }
}

class Violinist: StudentMusician {
    var orchestraTeam = "Swift philharmonic"
    
    // 상속받은 수퍼클래스의 함수 변경시
    // designated initializer (= 주 이니셜라이저, 지정 이니셜라이저)
    override func train() {
        trainedTime += 2
    }
}

let student1 = Student(firstName: "mama", lastName: "big")
let student1_1 = Student(student: student1)
let student2 = StudentMusician(firstName: "Hanna", lastName: "Jang", favMusic: ["Classic"])
let student3 = StudentMusician(name: "Lula")

print(student1)
print(student2)
print(student3)

// designated init(DI) 와 convenience init(CI) 의 차이
// 1. DI는 자신의 부모 DI를 호출해야 함
// 2. CI 같은 클래스의 initializer를 반드시 하나 이상 호출해야 함
// 3. CI는 궁극적으로 DI를 호출해야 함
