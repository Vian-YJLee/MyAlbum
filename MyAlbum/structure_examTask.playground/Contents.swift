import UIKit

// 예제 2
// 1. 강의 이름, 강사이름, 학생 수 를 가지는 Struct 작성
// 2. 강의 Array와 강사 이름을 받아, 해당 강사의 강의 이름을 출력하는 함수 작성
// 3. 강의 3개 만들고 강사이름으로 강의 찾기

// 1
struct Lecture {
    let className: String
    let instructorName: String
    let stockOfstudent: Int
    
}

let lecture1 = Lecture(className: "Swift", instructorName: "Jack", stockOfstudent: 10)
let lecture2 = Lecture(className: "Android", instructorName: "Johnson", stockOfstudent: 17)
let lecture3 = Lecture(className: "React Native", instructorName: "sara", stockOfstudent: 14)

// 2-1 강사 이름으로 강의 찾기

func searchLectureByTName (name: String, LectureData: [Lecture]) {
    
    let lectureTitle = LectureData.first { (lec) -> Bool in return lec.instructorName == name }?.className ?? "개설된 강의가 없습니다."
    // { lec in return lec.instructorName == name }?.className ?? "" 혹은
    // { $0.instructorName == name }?.className ?? ""
    print("\(name) 선생님의 강의: \(lectureTitle)")
    

//    var lectureTitle = ""
//    var teacherName = ""
//
//    for searchByName in LectureData {
//
//        if name == searchByName.instructorName {
//            lectureTitle = searchByName.className
//            teacherName = searchByName.instructorName
//            print("\(teacherName) 선생님의 강의는 \(lectureTitle) 입니다.")
//        } else {
//            print("\(name) 선생님의 강의는 개설되지 않았습니다.")
//        }
//    }
    
}
// 3

let teacher = "Jai"
let lectures = [lecture1, lecture2, lecture3]
searchLectureByTName(name: "Jack", LectureData: lectures)

searchLectureByTName(name: teacher, LectureData: lectures)
