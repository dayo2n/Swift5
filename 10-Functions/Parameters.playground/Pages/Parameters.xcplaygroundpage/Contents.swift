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
 # Parameters
 ![define](define.png)
 ![param](param.png)
 */

func add() -> Int {
    return 1 + 2
}
add()

func add(a: Int, b: Int) -> Int {
    // 파라미터는 함수바디에서 사용할 수 있는 임시 상수이다. let이므로 값을 변경할 수 없다.
    return a + b
}

/*:
 ## Calling Functions
 ![call](call.png)
 */

add(a: 12, b: 2)
// 함수 호출시에는 '[파라미터이름] : [값 또는 표현식]' 형태로 쓴다.
// 파라미터의 이름은 formal parameter(함수 정의시 쓴 이름)와 달라도 된다.
// 호출 시 전달하는 인자는 argument, actual parameter라고 한다.

/*:
 ## Default Value
 ![defval](defval.png)
 */
// 함수 정의시 기본값을 할당하는 방법

func sayHello(to: String = "Stranger") {
    print("Hello, \(to)")
}

sayHello()
sayHello(to: "Swift")


// Param의 scope는 함수 body 안으로만 한정되어 있다.
// 파라미터는 함수 호출시 생성되고 호출된 함수의 실행이 종료되면 자동으로 삭제된다! GC의 개념인가?
