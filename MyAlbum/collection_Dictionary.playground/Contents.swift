import UIKit

// Dictionary 생성방법
// var DictionaryName: [type1, type2] = ["Key(type1)": value(type2), "Key(type1)": value(type2)]
var scoreDic: [String: Int] = ["Lala": 80, "Ray": 95, "Jack": 90]

//var scoreDic: Dictionary<String, Int> = ["Lala": 80, "Ray": 95, "Jack": 90]
scoreDic["Lala"]

// let score = scoreDic["LaLa"] 로 받으면 score는 옵셔널로 타입추론 되기때문에 옵셔널 바인딩으로 코딩하는 것이 더 안정적

if let score = scoreDic["Ray"] {
    print(score)
} else {
    print("해당 학생의 점수가 없습니다.")
}
//dictionary에 값이 없을 경우 nil 값 반환
scoreDic["Jerry"]

// 비어있는지 확인(Bool type)
scoreDic.isEmpty
// 비우기
// scoreDic = [:]
// 개수 묻기
scoreDic.count

// 기존 사용자 update
scoreDic["Lala"] = 95
scoreDic

// 사용자 추가
scoreDic["Jake"] = 100
scoreDic

// 사용자 제거
scoreDic["Jake"] = nil
scoreDic

// ----- for loop

for (name, score) in scoreDic {
    print("\(name), \(score)")
}
//key value 보기
//출력 순서 상관없음..선언한 Dictionary의 인덱스들이 순차적이지 않음
for key in scoreDic.keys {
    print(key)
}
// 해보기
// 1. 이름, 직업, 도시를 포함한 dictionary 만들기
// 2. 도시를 현재 도시 외 다른 곳으로 업데이트 하기
// 3. 만들어진 dictionary에서 이름과 이름 도시 출력하는 함수 만들기

// 1.
var myInfo: [String: String] = ["name": "Blabla", "Job": "mailMan", "city": "seoul"]

// 2.
myInfo["city"] = "busan"

// 3.
print(myInfo.keys)

for personalInfo in myInfo.values {
    if personalInfo == "mailMan" {
        break
    } else {
        print(personalInfo)
    }
}

func personalInfoNameAndCity(dic: [String: String]) {
    if let name = dic["name"], let city = dic["city"] {
        print("이름: \(name)", "도시: \(city)" )
    } else {
        print("Cannot Found")
    }
}

personalInfoNameAndCity(dic: myInfo)
