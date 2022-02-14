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
 # String Indices
 */
let str = "Swift" // swift 문자열 인덱스는 정수가 아님

str.startIndex // nested type, 정수가 아님!
let firstCh = str[str.startIndex]
print(firstCh)

//let lastCh = str[str.endIndex] // error : index out of bound
let lastCharIndex = str.index(before: str.endIndex)
let lastCh = str[lastCharIndex] // 정수형이 아니므로 단순히 1을 뺄 수 없다!
print(lastCh)

let secondCharIndex = str.index(after: str.startIndex)
let secondCh = str[secondCharIndex]
print(str[secondCharIndex])

var thirdCharIndex = str.index(str.startIndex, offsetBy: 2)
print(str[thirdCharIndex])

//thirdCharIndex = str.index(str.endIndex, offsetBy: 2) // error! end를 기준으로 할 때는 반드시 음수
thirdCharIndex = str.index(str.endIndex, offsetBy: -3)
print(str[thirdCharIndex])

// 인덱스 범위를 확신할 수 없다면 반드시 확인
if thirdCharIndex < str.endIndex && thirdCharIndex > str.startIndex {
    
}
