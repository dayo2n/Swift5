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
 # Closures
 ![closure-expr](closure-expr.png)
 ![closure](closure.png)
 */
// Closure : 이름이 없는 함수
// 함수와 클로저는 서로 호환된다.
//{ print("Hello, Swift") } // 가장 단순한 클로저 형태
// 클로저는 글로벌 스코프에서 단독 사용이 불가능하다.

let c = { print("Hello, Swift") } // 표현형은 () -> ()
c() // 이름없는 함수인 클로저에 c라는 이름을 붙여준 것

let c2 = { (str: String) -> String in
    return "Hello, \(str)"
}

// closure를 Argument 형태로 전달
let result = c2("Closuer")
print(result)


// closure를 Parameter 형태로 전달
typealias SimpleStringClosure = (String) -> String

func perform(closuer: SimpleStringClosure) {
    print(closuer("iOS"))
}

perform(closuer: c2)

// closure를 바로 Argument로 전달
perform(closuer: { (str: String) -> String in
    return "Hi, \(str)" // 실행구문이 비교적 짧으면 직접 작성
})
//: [Next](@next)
