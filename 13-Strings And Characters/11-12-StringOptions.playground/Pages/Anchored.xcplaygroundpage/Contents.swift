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
 # Anchored Option
 */
// Backward 옵션과 혼동하지 않기!
// Anchored Option은 전체문자열을 대상으로 검색하지 않고 시작부분을 문자열 앞부분, 끝부분으로 제한한다.

let str = "Swift Programming"

if let result = str.range(of: "Swift", options: [.backwards]) { // trailing -> leading
    print(str.distance(from: str.startIndex, to: result.lowerBound))
} else {
    "not found"
}

if let result = str.range(of: "Swift", options: [.anchored]) { // leading 부분만 검사
    print(str.distance(from: str.startIndex, to: result.lowerBound))
} else {
    "not found"
}

if let result = str.range(of: "Swift", options: [.anchored, .backwards]) { // trailing 부분만 검사
    print(str.distance(from: str.startIndex, to: result.lowerBound))
} else {
    "not found"
}

str.hasPrefix("swift")
str.hasSuffix("swift")

str.lowercased().hasPrefix("swift")
if let _ = str.range(of: "swift", options: [.anchored, .caseInsensitive]) {
    print("same prefix")
}

str.hasSuffix("programming")
if let _ = str.range(of: "programming", options: [.anchored, .backwards, .caseInsensitive]) {
    print("same suffix")
}

//: [Next](@next)
