import UIKit

// var someArray = [1, 3, 7, 2]

// set : 순서 없음, unique한 값들이 저장
// 중복이 없는 unique Item관리 시 유용
var someSet: Set<Int> = [1, 2, 3, 8]

//collection property
someSet.capacity
someSet.isEmpty
someSet.count

someSet.contains(1)
someSet.contains(5)

someSet.insert(9)
someSet

someSet.remove(1)
