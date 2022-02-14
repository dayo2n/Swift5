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
 # String Basics
 */

var str = "Hello, Swift String"
var emptyStr = ""
emptyStr = String()

// boolean value to String
let a = String(true) // not TRUE, literal "true"
let b = String(12) // not Int 12, literal "12"
let c = String(12.34)
let d = String(str)

let hex = String(123, radix: 16)
let octal = String(123, radix: 8)
let binary = String(123, radix: 2)

let repeatStr = String(repeating: "😎", count: 7) // swift가 unicode를 지원하므로 가능
let unicode = "\u{1f44f}"

let e = "\(a) \(b)"
let f = a + b
str += "!!"


str.count
str.count == 0
str.isEmpty
str == "Apple"
"apple" != "Apple" // swift는 대소문자를 구분
"apple" < "Apple"

str.lowercased()
str.uppercased()
str

// Upper Camel Case
str.capitalized
"apple ipad".capitalized

for char in "Hello" {
    print(char)
}


let num = "1234567890"
num.randomElement()

