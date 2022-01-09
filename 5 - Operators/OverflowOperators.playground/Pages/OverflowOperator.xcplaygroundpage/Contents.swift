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
 # Overflow Operators
 */

Int8.min
Int8.max

//let num: Int8 = Int8.max + 1
/*:
 ## Overflow Addition Operator
 ````
 a &+ b
 ````
 */
// 앰퍼샌드 ㅇ연산을 이용하면 오버플로우를 허용할 수 있다.
let a: Int8 = Int8.max
//let b: Int8 = a + 1
let b: Int8 = a &+ 1 // -128: Int8을 저장할 수 있는 가장 작은 값이다.
// 오버플로우 연산이 메모리 공간의 크기를 바꾸지 않기 때문에
/*:
 ## Overflow Subtraction Operator
 ````
 a &- b
 ````
 */
let c: Int8 = Int8.min
let d: Int8 = c &- 1
/*:
 ## Overflow Multiplication Operator
 ````
 a &* b
 ````
 */
let e: Int8 = Int8.max &* 2
// 이거는 궁금해도 딱히 알 필요없다... 로직은 아래와 같다.
//Int8.max * 2 = 127 * 2 = 254
// 0 -> ... -> 127 -> -128 -> ... -> -2
