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
 # Enumeration Case Pattern
 ![enum-case](enum-case.png)
 */

// 연관값을 가진 열거형 케이스를 매칭시킬 때 사용
// 각종 statement에서 사용

enum Transportation {
    case bus(number: Int)
    case taxi(company: String, number: String)
    case subway(lineNumber: Int, express: Bool)
}

var tpt = Transportation.bus(number: 7)

switch tpt {
case .bus(let n): // 연관값을 n 상수에 바인딩
    print(n)
case .taxi(let c, var n): // 모든 연관값을 바인딩해야하는데, 필요없는 바인딩이라면 와일드카드(_) 이용
    print(c, n)
case let .subway(l, e): // 바인딩 방식이 let || var 중 let으로 동일하다면 한번에 바인딩 가능
    print(l, e)
}



tpt = Transportation.subway(lineNumber: 2, express: false)

if case let .subway(2, express) = tpt {
    // 첫번째 연관값이 2로 바인딩되어있을 때 실행될 블록
    if express {
        
    } else {
        
    }
}

// (와일드카드로 무시, 값을 직접 입력)했으므로 let 또는 var로 바인딩 X
if case .subway(_, true) = tpt {
    print("express")
}





let list = [
    Transportation.subway(lineNumber: 2, express: false),
    Transportation.bus(number: 4412),
    Transportation.subway(lineNumber: 7, express: true),
    Transportation.taxi(company: "SeoulTaxi", number: "1234")
]

for case let .subway(n, _) in list {
    print("subway \(n)")
}

for case let .subway(n, true) in list {
    print("subway \(n)")
}

for case let .subway(n, true) in list where n == 2 { // where절은 collection 뒤에 정의 
    print("subway \(n)")
}


