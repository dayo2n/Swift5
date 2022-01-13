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
 # switch
 ## Syntax
 ![switch-syntax](switch-syntax.png)
 */
// 자바와 달리 break를 걸어주지 않아도 된다!
// 케이스문을 실행하면 자동으로 switch문을 빠져나가는데, 빠져나가고 싶지않다면 fallthrough를 쓰면 된다. -> "Fall Through" 소스파일에서 다룸
// case문에는 최소 하나 이상의 코드가 있어야하는데, 쓸 코드가 없으면 break를 쓰면 된다. (굳이 쓸 일은 없을듯...)


let num = 1

switch num {
case 1:
   print("one")
case 2, 3: // 여러개의 패턴과 매칭 가능하다. 콤마(,)로 연결하여 나열한다.
   print("two or three")
default:
   print("others")
}


/*:
 ## Syntax
 ![where](where.png)
 */

// 패턴을 매칭되더라도, where 조건문에 false라면 구문이 실행되지 않는다.

switch num {
case let n where n <= 10:
   print(n)
default:
   print("others")
}





//: [Next](@next)
