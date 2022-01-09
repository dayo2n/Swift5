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
 # Range Operators
 */
// 범위 연산자
/*:
 ## Closed Range Operator
 ````
 a ... b
 a...
 ...a
 ````
 */
// 포함 범위 연산
// 단항연산지 공백없이 붙여 써야한다.

1 ... 10 // upperBound가 범위에 포함. 1이상 10이하
// 10 ... 1 // uppderBound > lowerBound여야 한다. 오름차순만 가능하다.

// 내림차순을 이용해야 한다면?
(1 ... 10).reversed()
12.34 ... 56.78 // 실수도 가능, 문자도 가능하다.

var sum = 0
for num in 1 ... 10 {
    num
    sum += num
}
sum

let list = ["A", "B", "C", "D", "E"]
list[2...] // 2번째 인덱스부터 끝까지
list[...2] // 0부터 인덱스 2까지 추출

// 이 코드는 실행하지 말 것
//for num in 1... { // upperBound를 지정하지 않으면 무한루프에 빠지게 된다.
//    print(num)
//}

/*:
 ## Half-Open Range Operator
 ````
 a ..< b
 ..<a
 ````
 */
// upperBound가 범위에 포함되지 않는다.

sum = 0
for num in 1  ..< 10  {
    sum +=  num
}
sum

list
list[..<2]

//for num in ..< 10 { // 단항연산으로 사용할 수 없다.
//    print(num)
//}

let range = 0 ... 5
range.contains(2)
range.contains(7)

let range2 = ...5 //단항으로 사용하면 lowerBound는 무한대가 된다.
range2.contains(7)
range2.contains(-1)
range2.contains(Int.min)
