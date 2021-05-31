import UIKit

// Structure: 구조체, 관계가 있는 것들을 묶어서 표현함
// 예제 : 편의점 3사에 대한 정보를 구조체로 만드시오
// 1사분면 위에 편의점 위치정보 포함
let store1 = (x: 3, y: 5, name: "CU")
let store2 = (x: 4, y: 6, name: "GS25")
let store3 = (x: 1, y: 7, name: "SevenEleven")

// 각 편의점 간 거리를 구하는 함수 (삼각함수)
func distance (current: (x: Int, y: Int), target: (x: Int, y: Int)) -> Double {
    let distanceX = Double(target.x - current.x)
    let distanceY = Double(target.y - current.y)
    //피타고라스의 정리 a2+b2=C2
    let distance = sqrt(distanceX * distanceX + distanceY * distanceY)
    return distance
}

// 현재 내 위치에서 가장 가까운 편의점을 찾아주는 함수
// 내 위치를 받아서 distance 함수를 사용해 계산한 후 가장 가까운 값을 찾아 출력


func printNearbyCVS (currentLocation: (x: Int, y: Int), CVSData: [(x: Int, y: Int, name: String)]) {
    // storeData의 타입은 구조체
 
    var nearbyCVSName = ""
    var nearbyCVSDistance =  Double.infinity
    
    for CVS in CVSData {
        let distanceToCVS = distance(current: currentLocation, target: (CVS.x, CVS.y))
        nearbyCVSDistance = min(distanceToCVS, nearbyCVSDistance)
        if nearbyCVSDistance == distanceToCVS {
            nearbyCVSName = CVS.name
        }
    }
    print("가장 가까운 편의점은 \(nearbyCVSName) 입니다.")
    print("거리값 \(nearbyCVSDistance)")
}

let myLocation = (x: 2, y: 9)
let stores = [store1, store2, store3]

printNearbyCVS(currentLocation: myLocation, CVSData: stores)
