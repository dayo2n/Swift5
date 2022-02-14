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
 # Comparing Strings
 */
let largeA = "Apple"
let smallA = "apple"
let b = "Banana"

largeA == smallA
largeA != smallA

largeA < smallA
largeA < b // 대문자가 소문자보다 작음
smallA < b // 사전순으로 생각하면 틀린 것 같겠지만 아스키코드로 보면 a(97)가 b(98)보다 작음

largeA.compare(smallA) == .orderedSame // 문자열이 같은지 비교하고 싶다면
// 대소문자를 구분하지않고 비교하고싶다면
largeA.caseInsensitiveCompare(smallA) == .orderedSame
largeA.compare(smallA, options: [.caseInsensitive]) == .orderedSame






let str = "Hello, Swift Pogramming!"
let prefix = "hello"
let suffix = "Programming"

str.hasPrefix(prefix)
str.hasSuffix(suffix)

// 대소문자를 구분하지않고 접두사를 비교하는 방법
// 원본 문자를 모두 소문자로 바꾸고 비교하려는 문자열도 소문자로 바꾸어 비교하면 대소문자를 구분하지않고 비교할 수 있다.
str.lowercased().hasPrefix(prefix.lowercased())
