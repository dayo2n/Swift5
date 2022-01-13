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
 # Value Binding Pattern
 ## Syntax
 ![value-binding](value-binding.png)
 */


// 매칭시킬 패턴을 변수나 상수로 바인딩한 후에 매칭하는 바업ㅂ이다

let a = 1

switch a {
case var x where x > 100: // Switch must be exhaustive : 100이거나 100보다 작은 값을 처리해주지 못해서 발생하는 오류이다. => default문을 추가해준다!
    x = 200 // 케이스블록에서 값을 바꿔야한다면 var변수로 바인딩해야 한다.
    print(x)
default:
    break
}
//x // 케이스 블록 밖에서 사용할 수 없다. 물론 다른 케이스문에서도 사용불가! 보통 where절과 함께 사용한다.


let pt = (1, 2)

switch pt {
case let(x, y):
    print(x, y)
case (let x, let y):
    print(x, y)
case (let x, var y): // 하나는 상수로 바인딩, 하나는 변수로 바인딩
    print(x, y)
case let(x, _): // 하나가 바인딩이 필요없는 값이라면 와일드카드 패턴으로 표현하여 바인딩에서 제외시킬 수 있다!
    print(x)
}
