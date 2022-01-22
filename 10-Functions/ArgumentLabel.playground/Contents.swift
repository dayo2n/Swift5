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
 # Argument Label
 */


/*:
 ## Syntax
 ![arg1](arg1.png)
 ![arg2](arg2.png)
 */
// 앞서 "Parameters" 강의에서 함수를 호출할 때는 파라미터 이름을 써야한다고 했는데 이는 정확하지 않은 설명이다.
// 정확히는 Argument Label을 써야 한다.
// Parameter Name vs Argument Label

func sayHello(name: String) { // Argument label을 생략한 형태이다. Wild Card Pattern
   print("Hello, \(name)")
}

func sayHello(to name: String) {
    print("Hello, \(name)") // 함수 바디에서 파라미터에 접근할 때는 name(parameter name)으로
//    print("Hello, \(to)") // 함수호출 시에는 to(Argument label)로
}

// 두 개가 같은 이름의 함수이지만 컴파일러는 다른 것으로 분류한다.

sayHello(name: "Swift")
// 위의 함수를 호출한 것이다.
// 위의 함수가 없으면 argument label인 to가 아니라 parameter naem인 name을 사용하였으므로 오류가 발생한다.
sayHello(to: "Swift")

func sayHello(_ name: String) {
    print("Hello, \(name)")
}
sayHello("Swift")
// 앞서 함수 정의할 때 wild card로 생략했다면 함수 호출시에도 argument label을 생략해야 한다.
