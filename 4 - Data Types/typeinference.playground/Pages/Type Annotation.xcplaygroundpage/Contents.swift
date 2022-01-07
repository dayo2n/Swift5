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

//: [Previous](@previous)
/*:
 # Type Annotation
 ## Syntax
 ![TypeAnnotation](type-annotation.png)
 */
let num: Int = 123
let value: Double
value = 12.3

// 초기값을 저장해주더라도 형식을 지정해주는 경우? 초기값으로 추론하여 타입과 다른 타입으로 생성하고 싶을때,
let ch: Character = "C" // Example. 지정해주지 않았다면 타입추론으로 String으로 선언된다.

// type annotation을 하지않는다면 추론하는 시간만큼 컴파일시간도 늘어난다.
// 컴파일 시간을 단축하기 위해 type annotation을 사용하기도한다.


//: [Next](@next)
