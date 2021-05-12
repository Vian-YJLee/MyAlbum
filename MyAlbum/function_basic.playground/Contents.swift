import UIKit

func printName(name: String)  {
    print("---> My Name is \(name)")
}

printName(name: "vian")

//func param 1개

func printMultipleOften(value: Int) {
    print("\(value) * 10 = \(value * 10)")
}

printMultipleOften(value: 212)

// func param 2개

func printTotalPrice(price: Int, stock: Int) {
    print("""
                수량 : \(stock)
                단가 : \(price)
                총액 : \(price * stock)원 입니다
                """)
}
printTotalPrice(price: 4500, stock: 62)


// 디폴트로 파라미터를 지정할 수도 있음

func totalPrice(price: Int, stock: Int) -> Int {
    
    let totalprice = price * stock
    return totalprice
}

let calculatedPrice = totalPrice(price: 8370, stock: 27)

// totalPrice(_ price: Int, _ stock: int)
// param 이름 없이..
