//
//  Copyright (c) 2018 KxCoding <kky0317@gmail.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//
import UIKit

/*:
 # Function Types
 ![ftype](ftype.png)
 */

// () vs void
// (): 없다.
// void: 리턴형이 없다. 스위프트에서는 빈괄호와 같은 의미이다.

// 리턴형이 없는 경우에도 리턴형이 없다는 것을 명시적으로 보여야 한다.

func sayHello() {
    print("Hello, Swift")
}

let f1 = sayHello
// 괄호()를 붙이지않으면 변수나 상수에 함수를 저장할 수 있다.
// 함수는 First Class Citizen이다.
f1
f1() // 괄호를 붙이면 함수 호출이 가능하다.


func printHello(with name: String) {
    print("hello, \(name)")
}

let f2: (String) -> () = printHello(with:) // function type을 지정하고 초기화
// 여기서 아규먼트를 넣어버리면 변수 또는 상수 초기화가 아닌 함수 호출이므로 에러가 발생한다.
let f3 = printHello(with:)
f3("World")


// 파라미터가 두 개인 경우
//func add(a: Int, b: Int) -> Int {
//    return a + b
//}
//let f4: (Int, Int) -> Int = add(a:b:)
//f4(1, 2)



// wild card로 argument label을 생략
func add(_ a: Int, with b: Int) -> Int {
    return a + b
}
let f4 = add(_:with:)



func swapNumbers(_ a: inout Int, _ b: inout Int) {
}
let f5 = swapNumbers(_:_:)
f5


func sum(of numbers: Int...) {
    
}
let f6 = sum(of: )
f6




// 현실적인 코드로 구현해보자!

func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func minus(_ a: Int, _ b: Int) -> Int {
    return a - b
}

func multiply(_ a: Int, _ b: Int) -> Int {
    return a * b
}

func divide(_ a: Int, _ b: Int) -> Int {
    return a / b
}

// 첫번째 arrow ->는 selectFunction에 대한 리턴 화살표
// 두번째 화살표 ->는 function type에 포함된 화살표
//func selectFunction(from op: String) -> (Int, Int) -> Int {
//
//}
// 위와 같이 쓰면 코드의 가독성이 떨어진다. 이때 type alias로
typealias ArithmeticFunction = (Int, Int) -> Int

// 첫번째 arrow ->는 selectFunction에 대한 리턴 화살표
// 두번째 화살표 ->는 function type에 포함된 화살표
func selectFunction(from op: String) -> ArithmeticFunction? {
    switch op {
    case "+":
        return add(_:_:)
    case "-":
        return minus(_:_:)
    case "*":
        return multiply(_:_:)
    case "/":
        return divide(_:_:)
    default:
        return nil // nil을 리턴하려면 옵셔널을 붙여야 한다!
    }
}
let af = selectFunction(from: "+")
//af(1, 2) // 함수에 옵셔널이 붙어있으므로 옵셔널 체이닝이 필요하다
af?(1, 2)
selectFunction(from: "*")?(12, 3)
