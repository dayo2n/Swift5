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
 # Variables
 
 ## Syntax
 ![Variables Syntax](syntax-var.png)
 */

var name = "Swift"
var year = 2018
var valid = true

var x = 0.0, y = 0.0, z = 0.0

name
print(name)
print(year)
print(valid)
/*:
 ## Syntax
 ![Variables Syntax](syntax-var-new-value.png)
 */
name = "iOS"
name = "dayo2n"

print(name)

var anotherName = name
anotherName = "Tim"
print(name, anotherName)

// 앞서 선언할 때 year var 변수는 정수형으로 정의
//year = "2018" // 정수형 변수에 문자열 값으로 초기화 불가능
//: [Next](@next)
