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

import Foundation

/*:
 # Replacing Substrings
 */
var str = "Hello, Objective-C"

// replace(void), replacing(String) : 원본은 건드리지 않고 새 문자열을 반환
if let range = str.range(of: "Objective-C") {
    str.replaceSubrange(range, with: "Swift")
}
str

if let range = str.range(of: "Hello") {
    let s = str.replacingCharacters(in: range, with: "Hi")
}
str

var s = str.replacingOccurrences(of: "Swift", with: "Awesome Swift") //of: 가 있다면 이를 with: 로 바꿔준다.
s = str.replacingOccurrences(of: "swift", with: "Awesome Swift") //of: 가 있다면 이를 with: 로 바꿔준다.
// 문자열에서는 기본적으로 대소문자를 구분한다!
s = str.replacingOccurrences(of: "Swift", with: "Awesome Swift", options: [.caseInsensitive]) // caseInsensitive를 옵션으로 쓰면 대소문자를 구분하지 않게 됨.
s
//: [Next](@next)
