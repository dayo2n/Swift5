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
 # Raw String
 */

// back slash \는 escape문자
var str = "\"Hello\", Swift 5"
var rawStr = #"\"Hello\", Swift 5"#

str = "Lorem\nIpsum"
rawStr = #"Lorem\nIpsum"#
// -> 그렇다면 이스케이프 문자를 통해 줄바꿈하고싶다면?
rawStr = #"Lorem\#nIpsum"#
rawStr = ###"Lorem\#nIpsum"### // escape처리되지않음
rawStr = ###"Lorem\###nIpsum"###

let value = 123
str = "The value is \(value)"
rawStr = #"The value is \#(value)"#

print("== str ======")
print(str)

print("== raw str ======")
print(rawStr)


var zipCodeRegex = "^\\d{3}-?\\d{3}$"
zipCodeRegex = #"^\d{3}-?\d{3}$"#

let zipCode = "123-456"
if let _ = zipCode.range(of: zipCodeRegex, options: [.regularExpression]) {
    print("valid")
}
