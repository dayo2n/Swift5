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
//: [Previous](@previous)

import Foundation

/*:
 # Bitwise Right Shift Operator
 ````
 a >> n
 ````
 ![rshift](rshift.png)
 */
// 비트를 오른쪽으로 밀고 밀려난 비트는 사라진다.
// 왼쪽에는 일단 0으로 채운다.

let a: UInt8 =  0b0010_0011
a >> 1 // 2로 나눈 것과 같다
a >> 2 // 4로 나눈 것과 같다
// Unsigned Integer는 부호비트를 신경쓰지않아도 되지만 Signed의 경우는 더 복잡하다. (아래)
/*:
 ## Arithmetic Shift
 ![ashift](ashift.png)
 */
// Signed Integer에서는 부호비트를 고려해주어야 한다.
// 제일 오른쪽비트는 사라지는 것은 위와 같다.
// 제일 왼쪽비트는 0으로 채워지는 것이 아니라 기존의 있던 부호비트로 채워진다.
