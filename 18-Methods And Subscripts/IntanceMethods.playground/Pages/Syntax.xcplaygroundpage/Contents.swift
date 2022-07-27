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
 # Instance Method
 ![Method](method.png)
 ![Call Method](call-method.png)
 */

// 문법은 함수와 동일함.
// 문법과는 구현하는 위치가 다르고 인스턴스를 통해 호출한다는 점 밖에 차이가 없음
// 함수는 특정 형식에 연관되지 않은 동작을 구현, 메소드는 연관된 동작을 구현

// 인스턴스 메소드는 클래스 열거형 구조체에서 구현할 수 있음, 특정 인스턴스와 연관된 동작을 구현하므로 실행마다 결과가 달라짐

class Sample {
    var data = 0
    static var sharedData = 123
    
    func doSomething() {
        print(data)
//        sharedData // error!
        Sample.sharedData
    }
    
    func call() {
        doSomething() // self 생략
    }
}

let a = Sample()
a.data
a.doSomething()
a.call()
// call() // error!



//class Size {
//    var width = 0.0
//    var height = 0.0
//
//    func enlarge() {
//        width += 1.0
//        height += 1.0
//    }
//}
//
//
//let s = Size()
//s.enlarge()

// --> 오류없음


// 그러나 구조체로 선언시 오류 발생, 값 형식에서 속성값을 바꾸는 경우 mutating 선언이 필수
struct Size {
    var width = 0.0
    var height = 0.0

    mutating func enlarge() {
        width += 1.0
        height += 1.0
    }
}


var s = Size() // 구조체 인스턴스를 상수로 저장하면 안됨
s.enlarge()
