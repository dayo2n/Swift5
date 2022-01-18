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
 # For-In Loops
 */
print("hello")
print("hello")
print("hello")


/*:
 ## Syntax
 ![syntax](syntax-range.png)
 */
for index in 1 ... 10 {
    // 반복상수인 index를 코드에서 사용하지 않아 "_"로 fix하라는 경고가 뜬다. => Wildcard pattern의 일종!
    // Wildcard Pattern 1. _ underscore문자, 2. 생략
    print("hello")
}

for index in 1 ... 5 {
    index
    print(index)
}

let power = 10
var result = 1

for _ in 1 ... power {
    result *= 2
}

result

for num in stride(from: 0, to: 10, by: 2){
    // stride() 함수
    // from: 시작지점, to: 종료지점(포함되지 않는다. 미만.) by: 보폭
    print(num)
}
/*:
 ## Syntax
 ![syntax](syntax-collection.png)
 */
// collection도 반복할 수 있다 == collection을 열거한다
let list = ["Apple", "Banana", "Orange"]
for fruit in list {
    print(fruit)
}

for i in 2 ... 9 {
    for j in 1 ... 9 {
        print("\(i) * \(j) = \(i * j)") // 아직 배우지않았지만 string interpolation 표현방법!
    }
}
