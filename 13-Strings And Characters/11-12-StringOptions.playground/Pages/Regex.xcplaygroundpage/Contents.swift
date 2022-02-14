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
 # Regular Expression
 */
let emailPattern = "([0-9a-zA-Z_-]+)@([0-9a-zA-Z-]+)(\\.[0-9a-zA-Z_-]+){1,2}"
let emailAddress = "user@example.com"

if let _ = emailAddress.range(of: emailPattern) {
    print("found")
} else {
    print("not found")
}
// faild to Optional Binding

// 정규표현식 옵션을 추가
if let _ = emailAddress.range(of: emailPattern, options: [.regularExpression]) {
    print("found")
} else {
    print("not found")
}
// 올바른 이메일 주소라고 판단해도 될까? => 아님! emailAddress = "user@example.com😎"라고 했을때도 optional binding이 성공하여 range 메소드는 단지 range를 리턴해줄 뿐이므로

// 인자를 추가하여 리턴된 range가 입력된 문자열의 전체 문자와 같다면 올바른 이메일임을 확인할 수 있다!
if let range = emailAddress.range(of: emailPattern, options: [.regularExpression]), (range.lowerBound, range.upperBound) == (emailAddress.startIndex, emailAddress.endIndex) {
    print("found")
} else {
    print("not found")
}

//: [Next](@next)
