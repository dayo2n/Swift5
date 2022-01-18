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

import UIKit

/*:
 # Optionals
 */


let num: Int
//print(num) // compile error!
// 변수와 상수는 값을 읽기 전에 항상 반드시 초기화해야 한다.
// Non-optional은 항상 값을 가져야 한다.

// 0을 값이 없다는 뜻으로 이용하면? 0이 0의 뜻을 가질 수 없다.

// Optionals : 값이 없음.
let optionalNum: Int? = nil // nil로 초기화할 때는 반드시 type annotation으로 타입을 지정해야한다.
optionalNum

//** Objective-C에서는 nil이 가리키는 값이 없는 포인터를 의미했지만, Swift에서는 포인터가 아니다! **
// 따라서 참조형이 아니라 값 형식에서도 사용할 수 있다.
/*:
 ## Optional Type
 ![optional-type-syntax](optional-type-syntax.png)
 */
let str: String = "Swift"
let optionalStr: String? = nil // 읽을때는 "스트링물음표"가 아니라 "옵셔널스트링"!

let a: Int? = nil

let b = a // 이렇게하면 b의 자료형은 optional Int가 된다!


//: [Next](@next)
