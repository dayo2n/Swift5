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
 # Comparison Operators
 */
// 비교연산자는 모두 이항연산자이므로 피연산자는 2개이다.
// 비교연산자의 결과는 항상 Bool
let a : Int = 12
let b : Int = 34
/*:
 ## Equal to Operator
 ````
 a == b
 ````
 */
a == b
"swift" == "Swift"

let c = 12.34
//a == c // 비교연산은 같은 타입끼리만 가능
/*:
 ## Not equal to Operator
 ````
 a != b
 ````
 */
a != b
/*:
 ## Greater than Operator
 ````
 a > b
 ````
 */
a > b
"swift" > "Swift"// 문자에서의 크기비교에서는 문자에 해당하는 아스키코드에 따라 비교된다. s :
/*:
 ## Greater than or equal to Operator
 ````
 a >= b
 ````
 */
a >= b
7 > 7
7 >= 7
/*:
 ## Less than Operator
 ````
 a < b
 ````
 */
a < b
/*:
 ## Less than or equal to Operator
 ````
 a <= b
 ````
 */
a <= b
