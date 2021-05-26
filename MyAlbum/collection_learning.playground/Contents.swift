import UIKit

var evenNumbers: [Int] = [2, 4, 6, 8]
// let evenNumbers: Array<Int> = [2, 4, 6, 8]

//다양한 elements 추가 방법

evenNumbers.append(10)
evenNumbers += [12, 14, 16]

evenNumbers.append(contentsOf: [18, 20])

//!!! let isEmpty = evenNumbers.isEmpty
// Array 비우기
evenNumbers.count
print(evenNumbers.first)
//first, last가 옵셔널인 이유는 Array에 값이 없을 수도 있기 때문에

if let firstElement =  evenNumbers.first {
    print("First Element is \(firstElement)")
} else {
    print("first Element is Empty")
}

evenNumbers.min()
evenNumbers.max()

var firstItem =  evenNumbers[0]
var secondItem = evenNumbers[1]
var tenthItem = evenNumbers[9]

// var twentithItem = evenNumbers[19]


// ---->

let firstThree = evenNumbers[0...2]
evenNumbers

//Array 내부에 값이 있는지를 확인하는 method
evenNumbers.contains(3)
evenNumbers.contains(4)

// elemnet 추가
evenNumbers.insert(0, at: 0)

// Array elements clear
//evenNumbers.removeAll()

// 특정 인덱스 삭제
evenNumbers.remove(at: 0)

evenNumbers[0] = -2
evenNumbers

evenNumbers[0...2] = [-2, 0, 2]
evenNumbers

// 인덱스 값 서로 바꾸기 evenNumbers.swapAt(0, 9)

// for loop

for num in evenNumbers {
    print(num)
    
    if num >= 15 {
        break
    }
}
print("-----------------")
for num in evenNumbers {
    if num <= 15 {
        print(num)
    } else {
        break
    }
}
print("-----------------")
for num in evenNumbers where num >= 14 {
    print(num)
}
print("-----------------")
//index number 가져오기 : enumrated method (by EnumeratedSequence<[Int]> )
for (index, num) in evenNumbers.enumerated() {
    print("idx: \(index) Value: \(num)")
    
    if index == 5 {
        break
    }
}

// index 일시 제외...copy 혹은 capture 된 Array의 사본을 출력하는것 같으니 아마도 메모리 사용은 더 늘지않을까?
let firstThreeRemoved = evenNumbers.dropFirst(3)
firstThreeRemoved
let lastRemoved = evenNumbers.dropLast()
lastRemoved

// 원본 array에서 특정 인덱스 순차적으로 가져오기
// 앞에서
let firstthree =  evenNumbers.prefix(3)
// 뒤에서
let lastThree = evenNumbers.suffix(3)
