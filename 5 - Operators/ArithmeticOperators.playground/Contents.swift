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
 # Operators
 */
/* 연산자의 종류
 Infix Operator시 피연산자와 연산자 간 공백을 동일하게 주어야 한다.
 Prefix, Postfix는 공백없이 사용해야 한다.
 */

/* Precedence 연산 우선순위
괄호 ( )로 구분할 수 있다.
 */

/* Associativity 연산 결합규칙 */
/*:
 # Arithmetic Operators
 */
let a = 12
let b = 34

/*:
 ## Unary Plus Operator
 ````
 +a
 ````
 */
+a
+b
/*:
 ## Addition Operator
 ````
 a + b
 ````
 */
a + b

/*:
 ## Unary Minus Operator
 ````
 -a
 ````
 */
-a
-b
/*:
 ## Subtraction Operator
 ````
 a - b
 ````
 */
a - b
/*:
 ## Multiplication Operator
 ````
 a * b
 ````
 */
a * b
/*:
 ## Division Operator
 ````
 a / b
 ````
 */
// 정수끼리 나누기 연산을 하면 몫만 구해짐
a / b // 몫을 구하는 연산자
b / a

// 정수를 실수로 바꾸어 나누기 연산을 해보면
let c = Double(a)
let d = Double(b)

c / d
d / c
/*:
 ## Remainder Operator (Modulo Operator)
 ````
 a % b
 ````
 */
a % b // 나머지를 구하는 연산자
//c % d // 나머지 연산은 정수에만 지원한다.
c.truncatingRemainder(dividingBy: d)
/*:
 ## Overflow
 */
//let num: Int8 = 9 * 9 * 9
// 타입이 저장할 수 있는 범위를 넘어가는 값을 저장하면 오버플로우가 발생한다. 스위프트에서는 오버플로우를 허용하지 않는다.

let num: Int = 9 * 9 * 9
// 필요한 경우에는 더 큰 타입을 사용해야 한다.
