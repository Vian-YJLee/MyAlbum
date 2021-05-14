import UIKit

var carName: String?
carName = nil
carName = "camaro"

var favoritActorName: String? = nil
let num = Int("10")
// 캐스팅 했기 때문에 num의 타입은 Int optional
// 문자열 있으면 캐스팅 실패하고 nil로 표현
// 파싱 결과에 따라 값을 표현

// Forced unwrapping 강제 언래핑 > 억지로 박스 열기
// Optional binding (if let) > 부드럽게 박스 열기 1
// Optional binding (guard) > 부드럽게 박스 열기 2
// Nil coalescing > 박스를 열었더니, 값이 없으면 디폴트 값 주기

print(carName!) // 강제 언래핑, 옵셔널 표기 없이 값 강제로 가져옴
print(carName) // 옵셔널 표기됨

// carName = nil
// print(carName!)
// 값이 없기 때문에 컴파일 오류 발생

// if let - else
carName = nil
if let unwrappingCarName = carName {
    print(unwrappingCarName)
} else {
    print("값이 없음")
}


// 옵셔널 변수에서 파싱된 결과 값이 있으면 출력하고 아니면 마는 함수
//func printParsedInt(from: String) {
//    if let parsedInt = Int(from) {
//        print(parsedInt)
//    } else {
//        print("Int converting 불가")
//    }
//}
//
//printParsedInt(from: "100")
//printParsedInt(from: "100이냐")

// 복잡도 높은, 좋지 못한 코드의 예시
//func printParsedInt(from: String) {
//    if let parsedInt = Int(from) {
//        print(parsedInt)
//        if parsedInt > 0 {
//            print(parsedInt)
//        } else {
//            print("음수")
//        }
//    } else {
//        print("Int converting 불가")
//    }
//}

//복잡도 줄이는 방법의 하나
func printParsedInt(from: String) {
    guard let parsedInt = Int(from) else {
        print("Int 컨버팅 불가")
        return
    }
    
    print(parsedInt)
}

printParsedInt(from: "100")

// nil coalescing
// 현재 carName은 nil 상태
let myCarName: String = carName ?? "genesis"

// 변수의 값이 nil인 경우 채워줌

// ex
// 1. 음식 이름 담는 변수 - 옵셔널
// 2. 옵셔널 바인딩 이용해 값 확인
// 3. 닉네임 받아서 출력하는 함수 작성, 조건: 입력 파라미터 String? 타입

// 1.
var favFoodName: String? = "치킨"


// 2.
print(favFoodName!)
print(favFoodName)

// if let - else Optional binding
if let foodName = favFoodName {
    print(foodName)
} else {
    print("안먹어?")
}

// guard Optional binding
func unwrappingFavFoodName2(food: String?) {
    guard let favFood = food else {
        print("음식이 읎어")
        return
    }
    print(favFood)
}

// 3.
func printNickName(name: String?) {
    guard let nickName = name else {
        print("닉을 만드세요")
        return
    }
    print(nickName)
}

printNickName(name: "오옵")
printNickName(name: nil)

// optional은 명확하고 명백한 코딩을 위한 방법
