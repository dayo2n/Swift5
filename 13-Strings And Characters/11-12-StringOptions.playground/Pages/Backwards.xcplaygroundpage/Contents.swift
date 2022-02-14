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
 # Backwards Option
 */

let korean = "행복하세요"
let english = "Be happy"
let arabic = "كن سعيدا"

// 문자열 시작 부분 : Leading, 끝부분 : Trailing
// 문자열을 검색할 때 Leading -> Trailing 방향 (한국어, 영어)
// 아랍어는 오른쪽에서 왼쪽으로 읽는다.

if let range = english.range(of: "p") {
    english.distance(from: english.startIndex, to: range.lowerBound)
}


// backward 옵션은 문자열의 검색방향을 반대로 바꿔준다.
if let range = english.range(of: "p", options: [.backwards]) {
    english.distance(from: english.startIndex, to: range.lowerBound)
}


//: [Next](@next)
