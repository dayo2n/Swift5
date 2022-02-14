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
 # Literal Option
 */
let a = "\u{D55C}"
let b = "\u{1112}\u{1161}\u{11AB}"


// 시각적으로 같은 문자면 true를 반환
a == b
a.compare(b) == .orderedSame

// 구성값이 다르므로 false를 반환
a.compare(b, options: [.literal]) == .orderedSame
// literal 옵션을 쓰는 것이 훨씬 빠름
// why?
/*
 리터럴을 사용하지 않으면 : 코드 유닛으로 문자를 구성 -> 최종 결과가 시각적으로 같은지를 반환
 리터럴을 사용 : 값을 비교
 */
//: [Next](@next)
