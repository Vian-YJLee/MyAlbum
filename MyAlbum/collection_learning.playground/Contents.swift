import UIKit

var evenNumbers: [Int] = [2, 4, 6, 8]
// let evenNumbers: Array<Int> = [2, 4, 6, 8]

//다양한 elements 추가 방법

evenNumbers.append(10)
evenNumbers += [12, 14, 16]

evenNumbers.append(contentsOf: [18, 20])

// let isEmpty = evenNumbers.isEmpty
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
