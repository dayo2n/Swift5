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
 # Initialization
 
 ## Default Initializer
 */

class Position {
    var x = 0.0
    var y = 0.0
    var z: Double? = nil
    
    // default initializer가 자동으로 생성되므로 빈 생성자를 만들 필요가 없음
}

let p = Position()

/*:
 ## Initializer Syntax
 ![initializer](initializer.png)
 ![call](call.png)
 */

class SizeObj {
    var width = 0.0
    var height = 0.0
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
// initializer가 overloading을 지원하기 때문에 아래처럼 간편하게 initializer 구현 가능
    convenience init(value: Double) { // convenience initializer
//        width = value
//        height = value
        self.init(width: value, height: value) // Initializer Delegation : 다른 이니셜라이저를 호출하는 것
    }
}
/*:
 ## Memberwise Initializer
 */

// 모든 속성이 기본값을 갖고있고 이니셜라이저를 작성하지않음
struct SizeValue {
    var width = 0.0
    var height = 0.0
}

let s = SizeValue()

// memberwise initializer: 모든 parameter를 초기화하는 이니셜라이저, same as default initializer
SizeValue(width: 1.2, height: 3.4)
